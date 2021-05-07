#pragma once
#include "memory.h"

typedef union
{
    union
    {
        struct
        {
            uint8_t l, h;
        };
        uint16_t hl;
    };
    uint32_t reg;
} regs;

typedef union
{
    uint16_t i;
    uint32_t ei;
} idxr;

typedef struct
{
    uint8_t CF: 1;
    uint8_t reserved: 1;
    uint8_t PF: 1;
    uint8_t reserved2: 1;
    uint8_t AF: 1;
    uint8_t reserved3: 1;
    uint8_t ZF: 1;
    uint8_t SF: 1;
    uint8_t TF: 1;
    uint8_t IF: 1;
    uint8_t DF: 1;
    uint8_t OF: 1;
    uint8_t IOPL: 2;
    uint8_t NT: 1;
    uint8_t reserved4: 1;
} flags;

class CPU
{
public:
    CPU(Memory *mem);
    void Reset();
    void Clock();
    void Execute(uint8_t opcode);
    void mov_r8_imm(uint8_t opcode);
    void mov_r16_imm(uint8_t opcode);
    void Execute();
    void int_imm8();
    uint32_t physaddr(uint32_t offset, uint16_t seg);
    void Dump();
    void add_rm8_r8();
    void printflags();
    void updateEflags(uint8_t value1, uint8_t value2, uint16_t result);
    void SetCarry(int is_carry);
private:
    Memory *ram;
    regs ax, bx, cx, dx;
    flags *eflags;
    idxr si, di;
    idxr sp, bp;
    uint16_t cs, ds, es, fs, gs, ss;
    uint32_t eip;
    bool halted;
    bool proted;
};