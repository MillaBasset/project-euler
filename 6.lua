--lua 5.3

local res = 0

local sum = 0
for i = 1, 100 do
    sum = sum + i
end
res = sum * sum

for i = 1, 100 do
    res = res - i * i
end
print(res)
