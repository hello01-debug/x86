#include "modrm.hpp"
#include "hw/cpu.hpp"
#include <stdio.h>
#include <stdlib.h>

void loop(Pentium* cpu)
{
    uint32_t ecx_val = cpu->gpregs[(int)GPRegister32::ECX].regs_32;
    if (ecx_val > 0)
    {
        ecx_val -= 1;
        cpu->gpregs[(int)GPRegister32::ECX].regs_32 = ecx_val;
    }
    if (ecx_val != 0)
    {
        int8_t offset = cpu->bus->read(cpu->getLinearAddr() + 1);
        cpu->ip.regs_32 += (offset + 2);
        return;
    }
    cpu->ip.regs_32 += 2;
}

void in_eax_imm8(Pentium* cpu)
{
    uint16_t address = cpu->bus->read(cpu->getLinearAddr() + 1);
    uint32_t value = cpu->iobus->in32(address);
    cpu->gpregs[(int)GPRegister32::EAX].regs_32 = value;
    cpu->ip.regs_32 += 2;
}

void out_imm8_al(Pentium* cpu)
{
    uint16_t address = cpu->bus->read(cpu->getLinearAddr() + 1);
    uint8_t al_val = cpu->gpregs[(int)GPRegister8::AL].regs_8l;
    cpu->iobus->out8(address, al_val);
    cpu->ip.regs_32 += 2;
    printf("OUT 0x%x, AL\n", address);
}

void jecxz(Pentium* cpu)
{
    uint32_t ecx_val = cpu->gpregs[(int)GPRegister32::ECX].regs_32;
    if (ecx_val == 0)
    {
        int8_t offset = cpu->bus->read(cpu->getLinearAddr() + 1);
        cpu->ip.regs_32 += (offset + 2);
    }
    else
    {
        cpu->ip.regs_32 += 2;
    }
    //cpu->gpregs[(int)GPRegister32::ECX].regs_32 += 1;
}

void in_al_imm8(Pentium* cpu)
{
    uint16_t address = cpu->bus->read(cpu->getLinearAddr() + 1);
    uint8_t value = cpu->iobus->in8(address);
    cpu->gpregs[(int)GPRegister8::AL].regs_8l = value;
    cpu->ip.regs_32 += 2;
    printf("IN AL, 0x%x\n", address);
}

void short_jump(Pentium* cpu)
{
    int8_t offset = cpu->bus->read(cpu->getLinearAddr() + 1);
    cpu->ip.regs_32 += (offset + 2);
}

void near_jump(Pentium* cpu)
{
    int32_t diff = cpu->bus->read32(cpu->getLinearAddr() + 1);
    cpu->ip.regs_32 += (diff + 5);
}

/*
 * jmp ptr16:16/32: 7 bytes
 * jumps in ptr16:16/32.
 * 1 byte: op (EA)
 * 2 byte: cs value
 * 2 byte: eip
*/
void ptr_jump(Pentium* cpu)
{
    uint32_t eip_val;
    uint16_t cs_val;
    if (cpu->isPE)
    {
        eip_val = cpu->bus->read32(cpu->getLinearAddr() + 1);
        cs_val = cpu->bus->read16(cpu->getLinearAddr() + 5);
    }
    else
    {
        eip_val = (uint32_t)cpu->bus->read16(cpu->getLinearAddr() + 1);
        cs_val = cpu->bus->read16(cpu->getLinearAddr() + 3);
    }
    cpu->sgregs[(int)SGRegister::CS].base = cs_val;
    cpu->ip.regs_32 = eip_val;
    cpu->firstClock = false;
}

void call_rel32(Pentium* cpu)
{
    int32_t offset = cpu->bus->read32(cpu->getLinearAddr() + 1);
    cpu->push32(cpu->ip.regs_32 + 5);
    cpu->ip.regs_32 += (offset + 5);
}

void call_rel16(Pentium* cpu)
{
    int32_t offset = cpu->bus->read16(cpu->getLinearAddr() + 1);
    cpu->push32(cpu->ip.regs_32 + 3);
    cpu->ip.regs_32 += (offset + 3);
}