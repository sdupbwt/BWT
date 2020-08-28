#ifndef BWT_H_
#define BWT_H_

//#include <math.h>
#include "xparameters.h"
#include "xgpio.h"
#include "bwt_ip.h"

#define LENGTH_STR 32

u8 LastColumn[LENGTH_STR];
u8 Suffixes[LENGTH_STR];
u8 Keys[LENGTH_STR][3];
u8 Buckets[LENGTH_STR];
u8 OffsetBuckets[LENGTH_STR];

u8 LoopCounter;
u8 PhaseCounter;
u8 FirstCharSuf;

void Merge(u8 InputTab[][3], u8 column, u8 left, u8 mid, u8 right);
void MergeSort(u8 InputTab[][3], u8 column, u8 left, u8 right);
u8 BuildBuckets(u8 * suffixes, u8  keys[][3], u8 * Buckets);
void BuildKeys(u8 * Buckets, u8 Offset, u8 IntTab[][3]);
void BuildSufArr(u8 * Str, u8	 * SuffixesArray);
void BWT(u8 * InputStr, u8 * BwtString);


#endif /* BWT_H_ */
