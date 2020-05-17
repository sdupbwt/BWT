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
import numpy as np

# Builds buckets from a sorted list of suffixes
# The buckets increases when adjacent suffixes have a different key
def build_buckets(suffixes, keys):
    buckets = [0] * len(suffixes)
    
    current_bucket = 1
    buckets[suffixes[0]] = current_bucket
    for i in range(1, len(suffixes)):
        if (keys[i-1,1] != keys[i,1]) or (keys[i-1,2] != keys[i,2]):
            current_bucket += 1
        buckets[suffixes[i]] = current_bucket
    return tuple(buckets), current_bucket

# Builds keys from buckets
# generating key pairs(x,y) x-bucket of i-th suffix, y-bucket of i+2^k-th suffix
def build_keys(buckets, offset):
    Keys = np.array(((0,0,0),)*len(buckets))
    offset_buckets = buckets[offset:] + (0,) * offset
    print ('offset_buckets: ', offset_buckets)
    for i in range(len(buckets)):
        Keys[i,:] = [i, buckets[i],offset_buckets[i]]
    return Keys

# MergeSort 
def mergeSort(arr, column): 
    if len(arr[:,column]) >1: 
        mid = len(arr)//2 #Finding the mid of the array 
        L = np.array(arr[:mid]) # Dividing the array elements  
        R = np.array(arr[mid:]) # into 2 halves 
        mergeSort(L,column) # Sorting the first half 
        mergeSort(R,column) # Sorting the second half 
        i = j = k = 0
         
        while i < len(L[:,column]) and j < len(R[:,column]):
            if L[i,column] <= R[j,column]: 
                arr[k] = L[i]
                i+=1
            else:
                arr[k] = R[j]
                j+=1
            k+=1
          
        # Checking if any element was left 
        while i < len(L[:,column]):
            arr[k] = L[i]
            i+=1
            k+=1
          
        while j < len(R[:,column]):
            arr[k] = R[j]
            j+=1
            k+=1
            
# MM
def build_sa(string):
    phase=0
    k = 1
    print('\n_____Initial SA______') 
    suffixes = tuple(range(len(string)))
    print('Suffixes: ',suffixes)
    keys = np.array(((0,0,0),)*len(string))
    for i in range(len(string)):
        keys[i,:] = [i, string[i],0]
    #print('Keys: ', keys)
    while True:
        print('\n_____Sorting by ',k,'first characters______')
        #suffixes = tuple(sorted(suffixes, key=lambda x: keys[x]))
        mergeSort(keys,2)
        mergeSort(keys,1)
        suffixes = keys[:,0]
        print('Suffixes: ',suffixes)
        buckets, max_bucket = build_buckets(suffixes, keys)
        print('Buckets: ',buckets)
        if max_bucket == len(string):
            print('no more sorting - different bucket for each suffix')
            break
        keys = build_keys(buckets, k)
        #print('Keys: ', keys)
        phase += 1
        k = 2**phase
        
    return suffixes

##########################################################
Input = 'nie chce mi sie$'
print('word: ', Input)
String = [0]*len(Input)

# Build an encoded integers string
for i in range(len(Input)):
    String[i] = ord(Input[i])    #ASCII number

String = tuple(String)
print('Encoded string: ',String)
suffix_array = build_sa(String)
print('\nFinal SA: ', suffix_array)

last_column = np.array((0,)*len(suffix_array))

for i in range(len(suffix_array)):
    last_column[i]=String[suffix_array[i]-1]# Last characters of each row
print('\n\n_____________BWT result______________')
bwt = ''.join(map(chr,last_column))
print('\nBWT: ',str(bwt))
print('end')
