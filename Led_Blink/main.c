/*
 */

#include <mcs51/8051.h>

void delay(unsigned int);

void main(void)
{

    // Insert code

    while(1)
    {

        P1_0=0;
        delay(40000);
        P1_0=1;
        delay(40000);

    }

}

void delay(unsigned int vueltas)
{
    unsigned int contador;
    for(contador=0; contador<vueltas; contador++);
}
