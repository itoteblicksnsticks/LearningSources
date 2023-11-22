**Disassembly:**

```lua
1  [1]  GETGLOBAL    0 -1  ; player
2  [1]  EQ           0 0 -2  ; - true
3  [1]  JMP          4      ; to 8
4  [2]  GETGLOBAL    0 -3  ; print
5  [2]  LOADK        1 -4  ; "Yes"
6  [2]  CALL         0 2 1
7  [2]  JMP          3      ; to 11
8  [4]  GETGLOBAL    0 -3  ; print
9  [4]  LOADK        1 -5  ; "No"
10 [4]  CALL         0 2 1
11 [5]  RETURN       0 1
```

**Reconstruction:**

```lua
if player == true then
    print("Yes")
else
    print("No")
end
```
