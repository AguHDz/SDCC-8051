/*
 */

#include <mcs51/8052.h>
#include<stdint.h>       // Incluye los formatos numéricos estandar int_XXt, uint_XXt

#define FOSC            12000000L
#define TICKS           12
#include "delay_lib.h"

void main(void)
{

    P1_5 = 0;  // Output.

    while(1)
    {
        P1_5 = 1;
        delay_ms(500);
        P1_5 = 0;
        delay_ms(500);
    }

}
