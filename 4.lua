--lua 5.3

local palindromes = {}
for i = 100, 999 do
    for j = 100, 999 do
        local str = tostring(i*j)
        if (
            string.sub(str, 1, 3) ==
            string.reverse(string.sub(str, #str == 6 and 4 or 3))
        ) then
            palindromes[#palindromes+1] = tonumber(str)
        end
    end
end
table.sort(palindromes)
print(palindromes[#palindromes])
