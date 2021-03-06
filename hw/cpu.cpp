#include "cpu.hpp"
#include "instruction_defs.hpp"
#include <stdio.h>
#include <stdlib.h>

void Pentium::update_eflags_sub(uint32_t op1, uint32_t op2, uint64_t result)
{
    int sign1 = op1 >> 31;
    int sign2 = op2 >> 31;
    int signr = (result >> 31) & 1;

    if (result >> 32)
    {
        eflags |= CARRY_FLAG;
    }
    else
    {
        eflags &= ~CARRY_FLAG;
    }
    if (result == 0)
    {
        eflags |= ZERO_FLAG;
    }
    else
    {
        eflags &= ~ZERO_FLAG;
    }
    if (signr)
    {
        eflags |= SIGN_FLAG;
    }
    else
    {
        eflags &= ~SIGN_FLAG;
    }
    if (sign1 != sign2 && sign1 != signr)
    {
        eflags |= OVERFLOW_FLAG;
    }
    else
    {
        eflags &= ~OVERFLOW_FLAG;
    }
}


void Pentium::update_eflags_add(uint32_t value1, uint32_t value2, uint64_t result)
{
    int sign1 = value1 >> 31;
    int sign2 = value2 >> 31;
    int signr = (result >> 31) & 1;

    if (result >> 32)
    {
        eflags |= CARRY_FLAG;
    }
    else
    {
        eflags &= ~CARRY_FLAG;
    }
    if (sign1 == sign2 && sign1 != signr)
    {
        eflags |= OVERFLOW_FLAG;
    }
    else
    {
        eflags &= ~OVERFLOW_FLAG;
    }
    if (signr)
    {
        eflags |= SIGN_FLAG;
    }
    else
    {
        eflags &= ~SIGN_FLAG;
    }
    if (result == 0)
    {
        eflags |= ZERO_FLAG;
    }
    else
    {
        eflags &= ~ZERO_FLAG;
    }
}

uint32_t Pentium::pop32()
{
    uint32_t addr = gpregs[(int)GPRegister32::ESP].regs_32;
    uint32_t p_addr = seg_to_linear(SGRegister::SS, addr);
    gpregs[(int)GPRegister32::ESP].regs_32 = addr + 4;
    return bus->read32(p_addr);
}

uint16_t Pentium::pop16()
{
    uint32_t addr = gpregs[(int)GPRegister32::ESP].regs_32;
    uint32_t p_addr = seg_to_linear(SGRegister::SS, addr);
    gpregs[(int)GPRegister32::ESP].regs_32 = addr + 2;
    return bus->read16(p_addr);
}

void Pentium::push32(uint32_t value)
{
    dump();
    uint32_t addr = gpregs[(int)GPRegister32::ESP].regs_32 - 4;
    gpregs[(int)GPRegister32::ESP].regs_32 = addr;
    uint32_t true_addr = seg_to_linear(SGRegister::SS, addr);
    printf("PUSH 0x%x (0x%x)\n", value, true_addr);
    bus->write32(true_addr, value);
}

void Pentium::push16(uint16_t value)
{
    uint32_t addr = gpregs[(int)GPRegister32::ESP].regs_32 - 2;
    gpregs[(int)GPRegister32::ESP].regs_32 = addr;
    uint32_t true_addr = seg_to_linear(SGRegister::SS, addr);
    bus->write16(true_addr, value);
}

void Pentium::dump()
{
    printf("EAX 0x%x ECX 0x%x EBX 0x%x EDX 0x%x\n", gpregs[(int)GPRegister32::EAX].regs_32, gpregs[(int)GPRegister32::ECX].regs_32, gpregs[(int)GPRegister32::EBX].regs_32, gpregs[(int)GPRegister32::EDX].regs_32);
    printf("ESP 0x%x EBP 0x%x\n", gpregs[(int)GPRegister32::ESP].regs_32, gpregs[(int)GPRegister32::EBP].regs_32);
    printf("SS 0x%x ES 0x%x CS 0x%x\n", sgregs[(int)SGRegister::SS].base,sgregs[(int)SGRegister::ES].base,sgregs[(int)SGRegister::CS].base);
}

void operand_override(Pentium* cpu)
{
    cpu->ip.regs_32++;
    uint8_t op = cpu->bus->read(cpu->getLinearAddr());
    printf("0x%x\n", op);
    if (cpu->isPE)
    {

    }
    else
    {
        if (op >= 0xB8 && op <= 0xBF)
        {
            mov_rm32_imm32(cpu);
            return;
        }
        if (op >= 0x50 && op <= 0x57)
        {
            push_r32(cpu);
            return;
        }
        switch (op)
        {
        case 0x83:
            code_83(cpu);
            break;
        case 0x89:
            mov_rm32_r32(cpu);
            break;
        case 0x25:
            and_ax_imm16(cpu);
            break;
        case 0xc1:
            code_c1_16(cpu);
            break;
        case 0x09:
            or_rm16_r16(cpu);
            break;
        default:
            printf("EIP: %08x Op: 66 %x not implemented.\n", cpu->getLinearAddr(), op);
            break;
        }
    }
}

void two_byte_inst(Pentium* cpu)
{
    uint8_t op = cpu->bus->read(cpu->getLinearAddr() + 1);
    printf("0x%x\n", op);
    if (cpu->two_byte_instrs[op] == NULL)
    {
        printf("EIP: 0x%08x op 0f 0x%x not implemented\n", cpu->getLinearAddr(), op);
        exit(-1);
    }
    cpu->two_byte_instrs[op](cpu);
}

void nop(Pentium* cpu)
{
    cpu->ip.regs_32++;
}

static void rep(Pentium* cpu)
{
    cpu->ip.regs_32++;
    uint32_t ecx_val = cpu->gpregs[(int)GPRegister32::ECX].regs_32;
    uint8_t op = cpu->bus->read(cpu->getLinearAddr());
    uint32_t op_eip = cpu->ip.regs_32;
    int i;
    if (cpu->instrs[op] == NULL)
    {
        printf("Op: f3 %x not implemented.\n", op);
        exit(-1);
    }
    printf("REP 0x%x (0x%x times)\n", op, ecx_val);
    for (i = 0; i < ecx_val; i++)
    {
        cpu->ip.regs_32 = op_eip;
        cpu->instrs[op](cpu);
        if ((op == 0xA6 || op == 0xA7 || op == 0xAE || op == 0xAF) && !cpu->eflags & ZERO_FLAG)
        {
            break;
        }
    }
    cpu->gpregs[(int)GPRegister32::ECX].regs_32 = ecx_val - i;
}

void Pentium::reset()
{
    for (size_t i = 0; i < num_gpregs; i++) {
        this->gpregs[i].regs_32 = 0;
    }
    for (size_t i = 0; i < num_sgregs; i++) {
        this->sgregs[i].selector = 0;
        this->sgregs[i].base = 0;
        this->sgregs[i].limit = 0;
    }
    this->ip.regs_32 = 0;
    sgregs[(int)SGRegister::CS].base = 0xFFFF0000;
    sgregs[(int)SGRegister::CS].limit = 0xFFFF;
    sgregs[(int)SGRegister::CS].selector = 0xF000;
    ip.regs_16 = 0xFFF0;
    for (int i = 0; i < 256; i++)
    {
        instrs[i] = NULL;
        two_byte_instrs[i] = NULL;
    }
    //instrs[0x0] = nop;
    instrs[0x0E] = push_cs;
    instrs[0x1E] = push_ds;
    instrs[0x1F] = pop_ds;
    instrs[0x30] = xor_rm8_r8;
    instrs[0x31] = xor_rm16_r16;
    instrs[0x3C] = cmp_al_imm8;
    for (int i = 0; i < 8; i++)
    {
        instrs[0x50 + i] = push_r16;
    }
    for (int i = 0; i < 8; i++)
    {
        instrs[0x58 + i] = pop_r16;
    }
    instrs[0x74] = jz;
    instrs[0x88] = mov_rm8_r8;
    instrs[0x89] = mov_rm16_r16;
    instrs[0x8C] = mov_rm16_seg;
    instrs[0x8E] = mov_seg_rm16;
    for (int i = 0; i < 8; i++)
    {
        instrs[0xB0 + i] = mov_r8_imm8;
    }
    for (int i = 0; i < 8; i++)
    {
        instrs[0xB8 + i] = mov_r16_imm16;
    }
    instrs[0xAB] = stosd;
    instrs[0xC3] = ret;
    instrs[0xC6] = mov_rm8_imm8;
    instrs[0xE4] = in_al_imm8;
    instrs[0xE6] = out_imm8_al;
    instrs[0xE8] = call_rel16;
    instrs[0xEA] = ptr_jump;
    instrs[0xF3] = rep;
    instrs[0xF6] = code_f6;
    instrs[0xFA] = cli;
    instrs[0xFC] = cld;
}

uint32_t Pentium::seg_to_linear(SGRegister reg, uint32_t offset)
{
    return ((sgregs[(int)reg].base << 4) + offset);
}

uint32_t Pentium::getLinearAddr()
{
    if (!isPE && firstClock)
    {
        return ((sgregs[(int)SGRegister::CS].base) + ip.regs_16);
    }
    else if (!isPE && !firstClock)
    {
        return ((sgregs[(int)SGRegister::CS].base << 4) + ip.regs_16);
    }
    else
    {
        return 0;
    }
}

void Pentium::write_sgreg(SGRegister reg, uint32_t value)
{
    sgregs[(int)reg].base = value;
}

void Pentium::write_ip(uint16_t new_ip)
{
    ip.regs_16 = new_ip;
}

uint16_t Pentium::get_ip()
{
    return ip.regs_16;
}

void Pentium::clock()
{
    uint8_t opcode;
    opcode = bus->read(getLinearAddr());

    printf("ADDRESS 0x%x (EIP 0x%x CS 0x%x)\n", getLinearAddr(), ip.regs_32, sgregs[(int)SGRegister::CS].base);
    
check_opcode:
    if (opcode == 0x2E || opcode == 0x67 || opcode == 0x26 || opcode == 0x65 || opcode == 0xF0)
    {
        ip.regs_32++;
        opcode = bus->read(getLinearAddr());
        goto check_opcode;
    }
    printf("0x%x\n", opcode);
    if (instrs[opcode] == NULL)
    {
        printf("PANIC: Opcode 0x%x not implemented at 0x%x\n", opcode, getLinearAddr());
        exit(-1);
    }
    instrs[opcode](this);
    firstClock = false;
}

