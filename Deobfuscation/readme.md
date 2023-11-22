## **Manual Deobfuscation of Lua VM-Based Obfuscator** (https://luaobfuscator.com) 

### **Version: Demo VM**

#### **1. Dumping Instructions:**

First, use `Ctrl + F` to search for `Instrs[Idx] = Inst` in the code. Then, add a `print(table.unpack(Inst))` statement to dump the instructions

**Example Code:**

```lua
Instrs[Idx] = Inst
print(table.unpack(Inst))
```

**Output Example:**

```
1. 2 <-- opcode | 0 <-- stack | player
2. 4 0 7.0 true
3. 5 0 7.0
4. 2 0 print
5. 3 1 Yes
6. 0 0 2 1
7. 5 0 10.0
8. 2 0 print
9. 3 1 No
10. 0 0 2 1
11. 1 0 1 0
```

#### **2. Matching Opcode:**

Match the first values in each line with the corresponding opcodes. Use `Ctrl + F` in `Main.lua` to look up comments like `--[1]`, `--[2]`, etc., matching them with the opcode numbers

- Look for `--[1]` for opcode `2`.
- Look for `--[2]` for opcode `4`.
- Look for `--[1]` again for opcode `2`.
- Look for `--[3]` for opcode `3`.

#### **3. Reconstructing the Code:**

After matching the opcodes, you will have a clearer understanding of the structure and flow of the original Lua code. Use this information to reconstruct the deobfuscated code, as shown in the final example

**Note:** The above steps cover the basic process but i'm leaving out some parts bc i'm lazy
