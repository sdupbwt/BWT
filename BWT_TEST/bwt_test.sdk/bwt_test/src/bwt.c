#include "bwt.h"

u8 ipow(u8 base, u8 exp)
{
    u8 result = 1;
    for (;;)
    {
        if (exp & 1)
            result *= base;
        exp >>= 1;
        if (!exp)
            break;
        base *= base;
    }

    return result;
}

//////////////////////////////////////////////////////////////////
// Merge-Sort Algorithm
//////////////////////////////////////////////////////////////////
// Merges two subarrays of InputTab[]
// First subarray is InputTab[left..mid]
// Second subarray is InputTab[mid+1..r]
void Merge(u8 InputTab[][3], u8 column, u8 left, u8 mid, u8 right)
{
	u8 i,j,k;
	u8 Size1 = mid - left + 1;
	u8 Size2 = right  - mid;

    // Create temp arrays
	u8 Left[Size1][3], Right[Size2][3];

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
void MergeSort(u8 InputTab[][3], u8 column, u8 left, u8 right)
{
    if (left < right)
    {
    	u8 mid = left + (right - left) / 2;

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

u8 BuildBuckets(u8 * suffixes, u8  keys[][3], u8 * Buckets)
{
	u8 CurrentBucket = 1;
    Buckets[suffixes[0]] = CurrentBucket;

    for(LoopCounter = 1; LoopCounter < LENGTH_STR; LoopCounter++)
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

void BuildKeys(u8 * Buckets, u8 Offset, u8 IntTab[][3])
{
    for(LoopCounter = 0; LoopCounter < LENGTH_STR; LoopCounter++)
    {
        if (LoopCounter < (LENGTH_STR - Offset))
        {
            OffsetBuckets[LoopCounter] = Buckets[LoopCounter+Offset];
        }
        else
        {
            OffsetBuckets[LoopCounter] = 0;
        }
    }
    for (LoopCounter = 0; LoopCounter < LENGTH_STR; LoopCounter++)
    {
        Keys[LoopCounter][0] = LoopCounter;
        Keys[LoopCounter][1] = Buckets[LoopCounter];
        Keys[LoopCounter][2] = OffsetBuckets[LoopCounter];
    }
}

//////////////////////////////////////////////////////////////////
// Manber-Myers algorithm
// Creates the suffix array from the string

void BuildSufArr(u8 * Str, u8 * SuffixesArray)
{
    PhaseCounter = 0; //phase of sorting
    FirstCharSuf = 1; //k, suffixes are sorted by k first characters, k = 2**phase

    for (LoopCounter = 0; LoopCounter < LENGTH_STR; LoopCounter++)
    {
        SuffixesArray[LoopCounter] = LoopCounter;
    }

    for (LoopCounter = 0; LoopCounter < LENGTH_STR; LoopCounter++)
    {
        Keys[LoopCounter][0] = LoopCounter;
        Keys[LoopCounter][1] = Str[LoopCounter];
        Keys[LoopCounter][2] = 0;
    }

    while(1)
    {
        MergeSort(Keys,2,0,LENGTH_STR - 1);
        MergeSort(Keys,1,0,LENGTH_STR - 1);

        for (LoopCounter = 0; LoopCounter < LENGTH_STR; LoopCounter++)
        {
            SuffixesArray[LoopCounter] = Keys[LoopCounter][0];
        }

        if (LENGTH_STR == BuildBuckets(SuffixesArray, &Keys[0][0], Buckets))
        {
            break;
        }
        BuildKeys(Buckets,FirstCharSuf,&Keys[0][0]);
        PhaseCounter++;
        FirstCharSuf = ipow(2,PhaseCounter);
    }
}

///////////////////////////////////////////////////////////////////
void BWT(u8 * InputStr, u8 * BwtString)
{
    BuildSufArr(InputStr, Suffixes);


    for (LoopCounter = 0; LoopCounter < LENGTH_STR; LoopCounter++)
    {

        if (0 == Suffixes[LoopCounter])
        {
            LastColumn[LoopCounter] = InputStr[LENGTH_STR - 1];
        }
        else
        {
            LastColumn[LoopCounter] = InputStr[Suffixes[LoopCounter] - 1];
        }

    }

   for (LoopCounter = 0; LoopCounter < LENGTH_STR; LoopCounter++)
   {
       BwtString[LoopCounter] = (char)LastColumn[LoopCounter];
   }
}
