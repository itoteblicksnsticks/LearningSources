local eq_check = 1 == 1

if not eq_check then
    return print('failed to get past EQ hook check [0X01]')
end

local jmp_check = true

if not jmp_check then
    return print('failed to get past JMP check [0X02]')
end

local random_add = 1 + 2
if key ~= nil and key % 69420 == 1337 then
    if random_add ~= 3 then
        return print('failed to get past EQ hook check [0X03]')
    end
    print('whitelisted')
else
    print('not whitelisted')
end
