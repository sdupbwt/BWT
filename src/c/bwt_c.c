#include <stdio.h>
#include <string.h>
#include <math.h>
#include "bwt_c.h"


char InputStr[MAX_LENGTH_STR];
char BWT_String[MAX_LENGTH_STR];

int main(void)
{
    printf("Enter string for the BWT: ");
    scanf("%s", InputStr);
    
    printf("\n\n___________Start of the BWT____________\n");
 
    BWT(InputStr,BWT_String);

    printf("\n\n______________BWT result_______________");
    printf("\nBWT: %s", BWT_String);

    printf("\nEND\n");
        
    return 0;
}