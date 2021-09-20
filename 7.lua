--lua 5.3

local function isPrime(n)
    for i = 2, math.sqrt(n) do
        if n % i == 0 then return false end
    end
    return true
end

local primes = {}
for n = 2, math.huge do
    if isPrime(n) then
        primes[#primes+1] = n
        if #primes == 10001 then
            print(primes[10001])
            break
        end
    end
end
