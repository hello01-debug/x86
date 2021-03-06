#include "modrm.hpp"
#include "hw/cpu.hpp"

#define DEFINE_NEAR_JX(flag, flag_name) \
    void j##flag(Pentium* cpu) \
    { \
        int diff = cpu->eflags & flag_name ? cpu->bus->read(cpu->getLinearAddr() + 2) : 0; \
        cpu->ip.regs_32 += (diff + 2); \
    } \
    void jn##flag(Pentium* cpu) \
    { \
        int diff = cpu->eflags & flag_name ? 0 : cpu->bus->read(cpu->getLinearAddr() + 2); \
        cpu->ip.regs_32 += (diff + 2); \
    }

DEFINE_NEAR_JX(z, ZERO_FLAG);
DEFINE_NEAR_JX(o, OVERFLOW_FLAG);

void jge(Pentium* cpu)
{
    int diff = ((cpu->eflags & SIGN_FLAG) == (cpu->eflags & OVERFLOW_FLAG)) ? cpu->bus->read(cpu->getLinearAddr() + 1) : 0;
    cpu->ip.regs_32 += (diff + 2);
}

void jg(Pentium* cpu)
{
    int diff = (!cpu->eflags & ZERO_FLAG && (cpu->eflags & SIGN_FLAG == cpu->eflags & OVERFLOW_FLAG)) ? cpu->bus->read(cpu->getLinearAddr() + 1) : 0;
    cpu->ip.regs_32 += (diff + 2);
}