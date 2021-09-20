--lua 5.3

local function isPrime(n)
    for i = 2, math.sqrt(n) do
        if n % i == 0 then return false end
    end
    return true
end

local sum = 0
for n = 2, 2*10^6 do
	if isPrime(n) then
		sum = sum + n
	end
end
print(sum)
