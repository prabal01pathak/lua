

def find_calories(calories) -> int:
    current, max_value = 0, 0
    for i in calories:
        current = current + i if i else 0
        max_value = max(current, max_value)
    return max(current, max_value) 


values = []
with open("input.txt", "r") as _f:
    for i in _f.readlines():
        values.append("") if i == "\n" else values.append(int(i))
    
print("found calories: ", find_calories(values))
