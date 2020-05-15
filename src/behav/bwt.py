##Input = input('Enter string for the BWT: ')
##assert "$" not in Input
##
##Input = Input + "$"
##table = []
##
##for i in range(len(Input)):
##    table.append(Input[i:] + Input[:i])
##print('\nsuffixes = ', table)
##
##table.sort()
##print('\nsorted suffixes = ', table)
##
##last_column = []
##for row in table:
##    last_column.append(row[-1])           # Last characters of each row
##
##bwt = ''.join(last_column)
##print('\nBWT: ',bwt)


# Builds buckets from a sorted list of suffixes
# The buckets increases when adjacent suffixes have a different key
def build_buckets(suffixes, keys):
    buckets = [0] * len(suffixes)
    
    current_bucket = 1
    buckets[suffixes[0]] = current_bucket
    for i in range(1, len(suffixes)):
        if keys[suffixes[i-1]] != keys[suffixes[i]]:
            current_bucket += 1
        buckets[suffixes[i]] = current_bucket
    return tuple(buckets), current_bucket

# Builds keys from buckets
# generating key pairs(x,y) x-bucket of i-th suffix, y-bucket of i+2^k-th suffix
def build_keys(buckets, offset):
    def generate():
        offset_buckets = buckets[offset:] + (0,) * offset
        print ('offset_buckets: ', offset_buckets)
        for i in range(len(buckets)):
            yield buckets[i], offset_buckets[i]
    return tuple(generate())

# MM
def build_sa(string):
    phase=0
    k = 1
    print('\n_____Initial SA______') 
    suffixes = tuple(range(len(string)))
    print('Suffixes: ',suffixes)
    keys = string
    print('Keys: ', keys)
    while True:
        print('\n_____Sorting by ',k,'first characters______')
        suffixes = tuple(sorted(suffixes, key=lambda x: keys[x]))
        print('Suffixes: ',suffixes)
        buckets, max_bucket = build_buckets(suffixes, keys)
        print('Buckets: ',buckets)
        if max_bucket == len(string):
            print('no more sorting - different buckets for each suffix')
            break
        keys = build_keys(buckets, k)
        print('Keys: ', keys)
        phase += 1
        k = 2**phase
        
    return suffixes

##########################################################
Input = 'mississippi$'
print('word: ', Input)
String = [0]*len(Input)

# Build an encoded integers string
for i in range(len(Input)):
    String[i] = ord(Input[i])    #ASCII number

String = tuple(String)
print('Encoded string: ',String)
suffix_array = build_sa(String)
print('\nFinal SA: ', suffix_array)

print('end')
