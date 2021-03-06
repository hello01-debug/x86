#include "hw/cpu.hpp"
#include "modrm.hpp"
#include <stdio.h>

void push_r32(Pentium* cpu)
{
    uint8_t reg = cpu->bus->read(cpu->getLinearAddr()) - 0x50;
    cpu->push32(cpu->gpregs[reg].regs_32);
    cpu->ip.regs_32++;
    printf("PUSH 0x%x\n", cpu->gpregs[reg].regs_32);
}

void push_r16(Pentium* cpu)
{
    uint8_t reg = cpu->bus->read(cpu->getLinearAddr()) - 0x50;
    cpu->push16(cpu->gpregs[reg].regs_16);
    cpu->ip.regs_32++;
    printf("PUSH 0x%x\n", cpu->gpregs[reg].regs_32);
}

void pop_r16(Pentium* cpu)
{
    uint8_t reg = cpu->bus->read(cpu->getLinearAddr()) - 0x58;
    cpu->gpregs[reg].regs_16 = cpu->pop16();
    cpu->ip.regs_32++;
    printf("POP 0x%x\n", cpu->gpregs[reg].regs_32);
}

void pop_r32(Pentium* cpu)
{
    uint8_t reg = cpu->bus->read(cpu->getLinearAddr()) - 0x58;
    cpu->gpregs[reg].regs_32 = cpu->pop32();
    printf("Pop 0x%x\n", reg);
    cpu->ip.regs_32++;
}