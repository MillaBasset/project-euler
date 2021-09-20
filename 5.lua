--lua 5.3

local function check(n)
    for i = 1, 20 do
        if n % i ~= 0 then return false end
    end
    return true
end

for n = 1, math.huge do
    if check(n) then
        print(n)
        break
    end
end
