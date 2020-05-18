##The BWT algorithm which uses the Manber-Myers algorithm for creating a suffix
##array and merge sort for sorting the suffixes

import numpy as np

# Builds buckets from a sorted list of suffixes
# The number of bucket increases when adjacent suffixes have a different key - 
# have different 2^k first letters

def build_buckets(suffixes, keys):
    buckets = np.array([0] * len(suffixes))
    current_bucket = 1
    buckets[suffixes[0]] = current_bucket
    
    for i in range(1, len(suffixes)):
        if (keys[i-1,1] != keys[i,1]) or (keys[i-1,2] != keys[i,2]):
            current_bucket += 1
        buckets[suffixes[i]] = current_bucket
    return buckets, current_bucket

# Builds keys from buckets' numbers
# Creates key pairs(x,y) - x: bucket of i-th suffix, y: bucket of i+offset-th suffix -
# with the key index in column 0

def build_keys(buckets, offset):
    keys = np.empty([len(buckets),3], dtype=int)
    offset_buckets = np.array(buckets[offset:])
    offset_buckets = np.append(offset_buckets,(0,) * offset)
    #print ('offset_buckets: ', offset_buckets)
    for i in range(len(buckets)):
        keys[i,:] = [i, buckets[i],offset_buckets[i]]
    return keys

# Merge Sort algorithm
def mergeSort(array, column): 
    if len(array[:,column]) >1: 
        mid = len(array)//2         # Find the mid of the array 
        L = np.array(array[:mid])   # Divide the array into halves
        R = np.array(array[mid:])
        mergeSort(L,column)         # Sort the first half 
        mergeSort(R,column)         # Sort the second half 
        i = 0
        j = 0
        k = 0
         
        while i < len(L[:,column]) and j < len(R[:,column]):
            if L[i,column] <= R[j,column]: 
                array[k] = L[i]
                i+=1
            else:
                array[k] = R[j]
                j+=1
            k+=1
          
        # Check if any element was left 
        while i < len(L[:,column]):
            array[k] = L[i]
            i+=1
            k+=1
          
        while j < len(R[:,column]):
            array[k] = R[j]
            j+=1
            k+=1
            
# Manber-Myers algorithm 
# Creates the suffix array from the string
def build_sa(string):
    phase = 0   #Phase of sorting
    k = 1       #Suffixes are sorted by k first characters, k = 2**phase
    
    print('\n______________Initial SA_______________') 
    suffixes = np.array(range(len(string)))
    print('Suffixes: ',suffixes)
    
    keys = np.empty([len(string),3], dtype=int)
    for i in range(len(string)):
        keys[i,:] = [i, string[i],0]
    #print('Keys: ', keys)
    
    while True:
        print('\n_____Sorting by',k,'first characters_____')
        mergeSort(keys,2)       
        mergeSort(keys,1)       
        suffixes = keys[:,0]    #Taking the sorted keys' indexes
        print('Suffixes: ',suffixes)
        buckets, max_bucket = build_buckets(suffixes, keys)
        print('Buckets: ',buckets)
        if max_bucket == len(string):
            print('\nNo more sorting needed - different bucket for each suffix')
            break
        keys = build_keys(buckets, k)
        #print('Keys: ', keys)
        phase += 1
        k = 2**phase
        
    return suffixes

#compute the BWT of the string

def bwt(string):
    string = string + '$'
    print('String to process:', string)
    Encoded_string = np.array([0]*len(string))
    
    for i in range(len(string)):            #Build an encoded integers string
        Encoded_string[i] = ord(string[i])  #ASCII number
    print('Encoded string: ',Encoded_string)
    
    suffix_array = build_sa(Encoded_string) #Build suffix array
    print('\nFinal SA: ', suffix_array)
    
    last_column = np.array([0]*len(suffix_array))   #Take last column of the sorted array
    for i in range(len(suffix_array)):
        last_column[i] = Encoded_string[suffix_array[i]-1]  #Last character of each row

    string = ''.join(map(chr,last_column))
    return string


##########################################################

#Take input string for the BWT
Input = input('Enter string for the BWT: ')
assert "$" not in Input     #string terminator

print('\n\n___________Start of the BWT____________\n')
bwt = bwt(Input)
#Print the result of the BWT as string 
print('\n\n______________BWT result_______________')
print('\nBWT:',bwt)
print('end')
