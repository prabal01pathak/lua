local function find_elves_with_most_calories(calories)
    local current = 0
    local max = 0
    for j=1, #calories do
        local i = calories[j]
        if i == "" then
            max = math.max(current, max)
            current = 0
        else
            current = current + i
        end
    end
    return math.max(current, max)
end

local file_values = io.open("input.txt", "r")
local values = {}
if file_values then
    local seperate_value = {}
    for line in file_values:lines() do
        if line == "===" then
            table.insert(values, seperate_value)
            seperate_value = {}
        elseif  line == "" then
            table.insert(seperate_value, "")
        else
            table.insert(seperate_value, tonumber(line))
        end
    end
    file_values:close()
end

for i, calories in ipairs(values) do
    local value = find_elves_with_most_calories(calories)
    print("ith input value  is: ", value, "i is: ", i)
end
