Input = input('Enter string for the BWT: ')
assert "$" not in Input

Input = Input + "$"
table = []

for i in range(len(Input)):
    table.append(Input[i:] + Input[:i])
print('\nsuffixes = ', table)

table.sort()
print('\nsorted suffixes = ', table)

last_column = []
for row in table:
    last_column.append(row[-1])           # Last characters of each row

bwt = ''.join(last_column)
print('\nBWT: ',bwt)
