#define NULL '\0'
#define DOLLAR '$'
#define MAX_LENGTH_STR 32
//#define KEYS_2D 3

int PhaseCounter = 0;
int FirstCharSuf = 1;
int MaxBucket = 1;
int Keys[MAX_LENGTH_STR][3];
int Buckets[MAX_LENGTH_STR];
int OffsetBuckets[MAX_LENGTH_STR];
int EncodedStr[MAX_LENGTH_STR];
int LastColumn[MAX_LENGTH_STR];
int Suffixes[MAX_LENGTH_STR];
int LastColumn[MAX_LENGTH_STR];
unsigned int DataSize = 0;

enum ExistChar {EXIST, NOT_EXIST};

//////////////////////////////////////////////////////////////////
// Length of input string
unsigned int DataLen(char * InputStr)
{
    unsigned char CharCounter = 0;
    for (CharCounter = 0; NULL != InputStr[CharCounter]; CharCounter++);
    return CharCounter;
}

//////////////////////////////////////////////////////////////////
// Check that sign exist in input string
enum ExistChar FindChar(char * Str, char Sign)
{
    unsigned int LoopCounter = 0;
    for(LoopCounter = 0; NULL != Str[LoopCounter]; LoopCounter++);

    if (Sign == Str[LoopCounter - 1])
    {
        return EXIST;
    }
    return NOT_EXIST;
}

//////////////////////////////////////////////////////////////////
// Change chars in string to ascii code
void EncodeString(char * InputStr, int * EncodedStr)
{
    for (unsigned LoopCounter = 0; NULL != InputStr[LoopCounter]; LoopCounter++)
    {
        EncodedStr[LoopCounter] = (int)InputStr[LoopCounter];
    }
}

//////////////////////////////////////////////////////////////////
// Print table with one dimension
void PriTabInt(int * IntTab, unsigned int TabLen)
{
    printf("[");
    for(unsigned int LoopCounter = 0; LoopCounter < TabLen; LoopCounter++)
    {
        printf(" %d ", IntTab[LoopCounter]);
    }
    printf("]");
}

//////////////////////////////////////////////////////////////////
// Print table with two dimensions
void PriTabInt2D(int IntTab[][3], unsigned int TabLen1D, unsigned int TabLen2D)
{
    printf("[");
    for(unsigned int LoopCounter = 0; LoopCounter < TabLen1D; LoopCounter++)
    {
        printf("[");
        for(unsigned int LoopCounter2 = 0; LoopCounter2 < TabLen2D; LoopCounter2++)
        {
            printf(" %d ", IntTab[LoopCounter][LoopCounter2]);
        }
        printf("]\n");
    }
    printf("]");
}

//////////////////////////////////////////////////////////////////
// Merge-Sort Algorithm
//////////////////////////////////////////////////////////////////
// Merges two subarrays of InputTab[]
// First subarray is InputTab[left..mid]
// Second subarray is InputTab[mid+1..r]
void Merge(int InputTab[][3], int column, int left, int mid, int right)
{
    int i,j,k;
    int Size1 = mid - left + 1;
    int Size2 = right  - mid;
    
    // Create temp arrays
    int Left[Size1][3], Right[Size2][3];
    
    //Copy data to temp arrays Left[] and Right[]
    for(i = 0; i < Size1; i++)
    {
        Left[i][0] = InputTab[left + i][0];
        Left[i][1] = InputTab[left + i][1];
        Left[i][2] = InputTab[left + i][2];
    }

    for(j = 0; j < Size2; j++)
    {
        Right[j][0] = InputTab[mid + 1 + j][0];
        Right[j][1] = InputTab[mid + 1 + j][1];
        Right[j][2] = InputTab[mid + 1 + j][2];
    }
    
    // Merge the temp arrays back into InputTab[left..right]
    i = 0; // Initial index of first subarray
    j = 0; // Initial index of second subarray
    k = left; // Initial index of merged subarray
    
    while((i < Size1) && (j < Size2))
    {
        if (Left[i][column] <= Right[j][column])
        {
           InputTab[k][0] = Left[i][0];
           InputTab[k][1] = Left[i][1];
           InputTab[k][2] = Left[i][2];
           i++;
        }
        else
        {
           InputTab[k][0] = Right[j][0];
           InputTab[k][1] = Right[j][1];
           InputTab[k][2] = Right[j][2];
           j++;
        }
        k++;
    }
    
    // Copy the remaining elements of Left[], if there any
    while (i < Size1)
    {
        InputTab[k][0] = Left[i][0];
        InputTab[k][1] = Left[i][1];
        InputTab[k][2] = Left[i][2];
        
        i++;
        k++;
    }
    // Copy the remaining elements of Right[], if there any
    while (j < Size2)
    {
        InputTab[k][0] = Right[j][0];
        InputTab[k][1] = Right[j][1];
        InputTab[k][2] = Right[j][2];
        
        j++;
        k++;
    }
}

// Merge and sort array
// left is left index and right is right index of the subarray of array to be sorted
void MergeSort(int InputTab[][3], int column, int left, int right)
{
    if (left < right)
    {
        int mid = left + (right - left) / 2;
       
        // Sort first and second halves
        MergeSort(&InputTab[0][0],column,left,mid);
        MergeSort(&InputTab[0][0],column,mid+1,right);
       
        Merge(&InputTab[0][0],column,left,mid,right);
    }
}


//////////////////////////////////////////////////////////////////
// Builds buckets from a sorted list of suffixes
// The number of bucket increases when adjacent suffixes have a different key - 
// have different 2^k first letters

int BuildBuckets(int * suffixes, int  keys[][3], int DataSize, int * Buckets)
{
    int CurrentBucket = 1;
    Buckets[suffixes[0]] = CurrentBucket;

    for(unsigned int LoopCounter = 1; LoopCounter < DataSize; LoopCounter++)
    {
        if ((Keys[LoopCounter - 1][1] != Keys[LoopCounter][1]) || (Keys[LoopCounter - 1][2] != Keys[LoopCounter][2]))
        {
            CurrentBucket++;
        }
        Buckets[suffixes[LoopCounter]] = CurrentBucket;
    }
    return CurrentBucket;
}

//////////////////////////////////////////////////////////////////
// Builds keys from buckets' numbers
// Creates key pairs(x,y) - x: bucket of i-th suffix, y: bucket of i+offset-th suffix -
// with the key index in column 0

void BuildKeys(int * Buckets, int Offset, int IntTab[][3], int DataSize)
{
    unsigned int LoopCounter = 0;
    for(LoopCounter = 0; LoopCounter < DataSize; LoopCounter++)
    {
        if (LoopCounter < (DataSize - Offset))
        {
            OffsetBuckets[LoopCounter] = Buckets[LoopCounter+Offset];
        }
        else
        {
            OffsetBuckets[LoopCounter] = 0;
        }
    }
    printf("\nOffsetBuckets: ");
    PriTabInt(OffsetBuckets, DataSize);
    for (LoopCounter = 0; LoopCounter < DataSize; LoopCounter++)
    {
        Keys[LoopCounter][0] = LoopCounter;
        Keys[LoopCounter][1] = Buckets[LoopCounter];
        Keys[LoopCounter][2] = OffsetBuckets[LoopCounter];
    }
}

//////////////////////////////////////////////////////////////////
// Manber-Myers algorithm 
// Creates the suffix array from the string

void BuildSufArr(int * Str, int DataSize, int * SuffixesArray)
{
    unsigned int LoopCounter = 0;
    PhaseCounter = 0; //phase of sorting
    FirstCharSuf = 1; //k, suffixes are sorted by k first characters, k = 2**phase
    printf("\n\n______________Initial SA_______________");

    for (LoopCounter = 0; NULL != Str[LoopCounter]; LoopCounter++)
    {
        SuffixesArray[LoopCounter] = LoopCounter;
    }
    printf("\nSuffixes: ");
    PriTabInt(SuffixesArray, DataSize);

    for (LoopCounter = 0; NULL != Str[LoopCounter]; LoopCounter++)
    {
        Keys[LoopCounter][0] = LoopCounter;
        Keys[LoopCounter][1] = Str[LoopCounter];
        Keys[LoopCounter][2] = 0;
    }
    printf("\nKeys: ");
    PriTabInt2D(&Keys[0][0], DataSize, 3);

    while(1)
    {
        printf("\n_____Sorting by %d first characters_____", FirstCharSuf);
        MergeSort(Keys,2,0,DataSize - 1);
        MergeSort(Keys,1,0,DataSize - 1);

        for (LoopCounter = 0; LoopCounter < DataSize; LoopCounter++)
        {
            SuffixesArray[LoopCounter] = Keys[LoopCounter][0];
        }
        printf("\nSuffixes: ");
        PriTabInt(SuffixesArray, DataSize);

        MaxBucket = BuildBuckets(SuffixesArray, &Keys[0][0], DataSize, Buckets);
        printf("\nBuckets: ");
        PriTabInt(Buckets, DataSize);

        if (MaxBucket == DataSize)
        {
            printf("\nNo more sorting needed - different bucket for each suffix\n");
            printf("%d, %d", MaxBucket, DataSize);
            break;
        }
        BuildKeys(Buckets,FirstCharSuf,&Keys[0][0],DataSize);
        printf("\nKeys: ");
        PriTabInt2D(&Keys[0][0],DataSize,3);
        PhaseCounter++;
        FirstCharSuf = pow(2,PhaseCounter);
    }
}

void BWT(char * InputStr, char * BwtString)
{
       
    if (NOT_EXIST == FindChar(InputStr, DOLLAR))
    {
        strcat(InputStr, "$");
    }

    printf("String to process: %s\n",InputStr);

    DataSize = DataLen(InputStr);
    
    EncodeString(InputStr, EncodedStr);
    printf("Encoded string: ");
    PriTabInt(EncodedStr, DataSize);

    BuildSufArr(EncodedStr, DataSize,Suffixes);

    printf("\nFinal SA: ");
    PriTabInt(Suffixes,DataSize);

    for (unsigned int LoopCounter = 0; LoopCounter < DataSize; LoopCounter++)
    {
        if (0 == Suffixes[LoopCounter])
        {
            LastColumn[LoopCounter] = EncodedStr[DataSize - 1];
        }
        else
        {
            LastColumn[LoopCounter] = EncodedStr[Suffixes[LoopCounter] - 1];
        }
    }

   for (unsigned char LoopCounter = 0; LoopCounter < DataSize; LoopCounter++)
   {
       BwtString[LoopCounter] = (char)LastColumn[LoopCounter];
   }  

}