--lua 5.3

-- Using an educated guess that a member of the triple
-- will not exceed half its sum.
for i = 1, 500 do
    for j = 1, 500 do
        for k = 1, 500 do
            if (
                i*i + j*j == k*k and
                i+j+k == 1000
            ) then
                print(i*j*k)
                goto done
            end
        end
    end
end
::done::
