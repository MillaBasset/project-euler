--lua 5.3

local x, y = 1, 2
local sum = 2
while x+y < 4*10^6 do
    x, y = y, x+y
    if y % 2 == 0 then sum = sum + y end
end
print(sum)
