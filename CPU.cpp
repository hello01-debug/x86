#include "CPU.h"
#include <cstring>
#include <cstdlib>
#include <cstdio>

// TODO: Add optional debug tracing

void CPU::SetCarry(int is_carry)
{
    if (is_carry)
    {
        eflags->CF = 1;
    } else
    {
        eflags->CF = 0;
    }
}

void CPU::updateEflags(uint8_t value1, uint8_t value2, uint16_t result)
{
    int sign1 = value1 >> 7;
    int sign2 = value2 >> 7;
    int signr = (result >> 7) & 1;
    SetCarry(result << 8);
}

void CPU::printflags()
{
    printf("FLAGS:\n");
    printf("CF: %d ", eflags->CF);
    printf("PF: %d ", eflags->PF);
    printf("AF: %d ", eflags->AF);
    printf("ZF: %d ", eflags->ZF);
    printf("SF: %d ", eflags->SF);
    printf("TF: %d ", eflags->TF);
    printf("IF: %d ", eflags->IF);
    printf("DF: %d ", eflags->DF);
    printf("OF: %d ", eflags->OF);
    printf("IOPL: %d ", eflags->IOPL);
    printf("NT: %d\n", eflags->NT);
    
}

uint8_t getop(uint8_t opcode)
{
    if (opcode != 0x04 && opcode != 0xCD && opcode != 0xF0 && opcode != 0xAC && opcode != 0xF4)
    {
        return (opcode & 0xF0);
    } else {
        return opcode;
    }
}

uint32_t CPU::physaddr(uint32_t offset, uint16_t seg)
{
    uint32_t p_base = ((uint32_t)seg) << 4;
    return p_base + offset;
}

CPU::CPU(Memory* mem)
{
    this->ram = mem;
    eflags = (flags*)malloc(sizeof(eflags));
    Reset();
}

void CPU::Reset()
{
    ax.reg = bx.reg = cx.reg = dx.reg;
    memset(eflags, 0, sizeof(eflags));
    eflags->reserved = 1;
    eflags->reserved2 = 1;
    eflags->reserved3 = 1;
    eflags->reserved4 = 0;
    eip = 0x7c00;
    proted = false;
}

void CPU::Execute()
{
    while (!halted)
    {
        Clock();
    }
}

void CPU::Clock()
{
    uint8_t opcode = ram->read(eip++);
    Execute(opcode);
}

void CPU::Execute(uint8_t opcode)
{
    uint8_t op = getop(opcode);
    //printf("Opcode: 0x%x\n", opcode);
    //printf("Op: 0x%x\n", op);
    switch(op)
    {
    case 0x04:
    {
        uint8_t data = ram->read(eip++);
        uint8_t r8 = ax.l;
        uint8_t rm8 = data;
        uint16_t result = (uint16_t)r8 + (uint16_t)rm8;
        ax.l = result;
        if (ax.l != (r8 + rm8))
        {
            SetCarry(1); // Kinda hacky
        }
    }
    break;
    case 0xb0: // MOV
    if (opcode < 0xB8)
    {
        mov_r8_imm(opcode);
    } else {
        mov_r16_imm(opcode);
    }
        break;
    case 0xCD: // INT
        int_imm8();
        break;
    case 0xF0: // CLI
        eflags->IF = 1;
        break;
    case 0xAC: // LODSB
        ax.l = ram->read(si.i);
        break;
    case 0xF4: // HLT
        //printf("HLT\n");
        halted = true;
        break;
    default:
        //printf("UNKNOWN OPCODE: 0x%x\n", op);
        break;
    }
}

// MOV r8, imm8
void CPU::mov_r8_imm(uint8_t opcode)
{
    uint8_t data = ram->read(eip++);
    uint8_t reg = opcode - 0xB0;
    switch(reg)
    {
    case 0x4:
        ax.h = data;
        //printf("MOV AH, 0x%02x\n", data);
        break;
    case 0xE:
        si.i = data;
        break;
    case 0x0:
        ax.l = data;
        //printf("MOV AL, 0x%02x\n", data);
        break;
    }
}

void CPU::mov_r16_imm(uint8_t opcode)
{
    uint16_t data = ram->read(physaddr(eip++, cs));
    data |= ram->read(physaddr(eip++, cs)) << 8;
    uint8_t reg = opcode - 0xB8;
    switch(reg)
    {
    case 0x4:
        sp.ei = data;
        //printf("MOV SP, 0x%04x\n", data);
        break;
    }
}
// Interrupts
void CPU::int_imm8()
{
    uint8_t interrupt = ram->read(eip++);
    //printf("INT 0x%x\n", interrupt);
    if (!proted && eflags->IF == 0)
    {
        eflags->IF = 1; // Make other interrupts wait
        switch (interrupt)
        {
        case 0x10:
            if (ax.h == 0x0e)
            {
                printf("%c", ax.l);
            }
        }
        eflags->IF = 0;
    }
}

void CPU::Dump()
{
    // We add a newline in front to avoid conflicting with any int 0x10 characters
    printf("\nAL: 0x%02x AH: 0x%02x AX: 0x%04x EAX: 0x%04x\n", ax.l, ax.h, ax.hl, ax.reg);
    printf("ESP: 0x%x\n", sp.ei);
    printflags();
}