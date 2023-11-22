# JMP ATTACK

## How it works:

**FIRST OF ALL DEFINE A KEY, OR ELSE THE JMP ATTACK WILL NOT WORK**

We define a new function called `handle_exec`, which takes the arguments: `inst` (instruction), `real_vip` (real virtual instruction pointer)

1. It gets the current opcode from the instruction

2. Checks if the opcode equals to 2 and if B register is equal to 35. 
    - Returns 26 as the VIP, jumping straight to the script's entry point

3. If the if statement fails, return the old VIP

Navigate: to `Here`, in `Main.lua` to see the function being initialized (Ctrl + F)


# EQ HOOKING

## How it works:

if (Inst[2] ~= Inst[4]) then  <-- not EQ hooked

if (Inst[2] == Inst[4]) then <-- EQ hooked

Essentially, "EQ Hooking" is the act of changing the conditional check from a "NEQ" to a "EQ" comparison or "EQ" to "NEQ"

Navigate: to `<--`, in `Main.lua` to see the EQ Hooking being initialized (Ctrl + F)
