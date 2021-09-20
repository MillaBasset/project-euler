--lua 5.3

local function isPrime(n)
    for i = 2, math.sqrt(n) do
        if n % i == 0 then return false end
    end
    return true
end

local factors = {}
for i = 2, math.sqrt(600851475143) do
    if 600851475143 % i == 0 then
        factors[#factors+1] = i
    end
end

local prime_factors = {}
for _, v in next, factors do
    if isPrime(v) then
        prime_factors[#prime_factors+1] = v
    end
end

print(table.concat(prime_factors, " "))
