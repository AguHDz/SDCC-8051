//
// Librería de tiempo de espara Delay.
//

#ifndef __DELAY_LIB_H
#define __DELAY_LIB_H

#include <mcs51/8052.h>
#include <stdint.h>

/* Frequency of the oscillator */
#ifndef FOSC
  #define FOSC            12000000L
#endif /* FOSC */
/* Number of clock cycles per machine cycle */
#ifndef TICKS
  #define TICKS           12
#endif /* TICKS */

/* STC89's 6T mode behaves more like doubling the frequency */
#if TICKS == 6
#warning If you are using 6T mode for STC89 series MCUs,        \
double FOSC rather than change TICKS from 12 to 6
#endif

#define __Ciclos_1ms      1000.0/(1000000.0/(FOSC/TICKS))

void delay_x10_cycles(uint8_t x10cycles);
void delay_x100_cycles(uint8_t x100cycles);
void delay_ms(uint16_t delayTimeUS);

// -------- Selecciona el la función de espara más apropiado ------
#if (FOSC/TICKS) < 100000
  // La división por 11 se ha obtenido de manera experimental para FOSC = 1 MHz.
  #define CALL_DELAY      delay_x10_cycles(__Ciclos_1ms/11)
#elif (FOSC/TICKS) < 2000000
  #define CALL_DELAY      delay_x10_cycles(__Ciclos_1ms/10)
#else
  #define CALL_DELAY      delay_x100_cycles(__Ciclos_1ms/100)
#endif
// ----------------------------------------------------------------


#pragma disable_warning 85  // Evita que se muestre aviso de no uso de variable de entrada de funciones.

// ----------------------------------------------------------------
void delay_x10_cycles(uint8_t x10cycles)
/* Total ciclos = 2 + 2 + 1 + 1 + 2 + (x10cycles-1)*(8 + 2) + 2 =
                = 10 + 10*(x10cycles-1) = 10 (1 + x10cycles - 1) =
                = 10 * x10cycles                                                  */
{
                                             // 2 ciclos de llamada a función.
   __asm
           mov  r7,dpl                       // 2 ciclos.
           dec  r7                           // 1 ciclo.
           mov  a, r7                        // 1 ciclo.
           jz   end_delay_x10_cycles         // 2 ciclos.
    loop_delay_x10_cycles:                   // ---------------------------------------------
           mov  r6,#3                        // 1 ciclo   //                        //
    loop_delay_10_cycles:                                 //                        //
           djnz r6,loop_delay_10_cycles      // 2 ciclos  //                        //
           nop                               // 1 ciclo.  //--> 1+2*3+1 = 8 ciclos. //
           djnz r7,loop_delay_x10_cycles     // 2 ciclos                            // --> 8 + 2 = 10 ciclos.
    end_delay_x10_cycles:                    // ---------------------------------------------
	__endasm;
                                             // 2 ciclos de retorno de función.
}

// ----------------------------------------------------------------
void delay_x100_cycles(uint8_t x100cycles)
{
                                                // 2 ciclos de llamada a función.
   __asm
           mov  r7,dpl                          // 2 ciclos.
           dec  r7                              // 1 ciclo.
           mov  a, r7                           // 1 ciclo.
           mov  r6,#44                          // 1 ciclo.
    loop_delay_x100_cycles_init:
           djnz r6,loop_delay_x100_cycles_init  // 2x44 = 88 ciclos
           nop                                  // 1 ciclo.
           jz   end_delay_x100_cycles           // 2 ciclos.
    loop_delay_x100_cycles:                     // ---------------------------------------------
           mov  r5,#48                          // 1 ciclo   //                        //
    loop_delay_100_cycles:                                   //                        //
           djnz r5,loop_delay_100_cycles        // 2 ciclos  //                        //
           nop                                  // 1 ciclo.  //--> 1+2*48+1 = 98 ciclos. //
           djnz r7,loop_delay_x100_cycles       // 2 ciclos                            // --> 98 + 2 = 100 ciclos.
    end_delay_x100_cycles:                      // ---------------------------------------------
	__endasm;
                                                // 2 ciclos de retorno de función.
}

// ----------------------------------------------------------------
void delay_ms(uint16_t delayTimeUS)
{
//    while(delayTimeUS--)
//        CALL_DELAY;
//  Para minimizar errores de tiempo insignificantes se translada el bucle while a un
//  bloque ASM eliminando lineas de código inmecesarias y que producian algunos ciclos de
//  espera superior a lo esperado.
    __asm
        mov     r3,dpl
        mov     r4,dph
    delay_ms_lib_loop:
        dec     r3
        cjne    r3,#0xff,delay_ms_lib_seguir
        dec     r4
    delay_ms_lib_seguir:
        mov     a,r3
        orl     a,r4
        jz      delay_ms_lib_fin
    __endasm;

    CALL_DELAY;

    __asm
        sjmp    delay_ms_lib_loop
    delay_ms_lib_fin:
    __endasm;
}

// ----------------------------------------------------------------
// PRUEBAS PREVIAS...

// Ciclos Máquina = Microsegundos x (1000000/(FOSC/TICKS))
// Microsegundos = Ciclos Máquina x ((FOSC/TICKS)/1000000)
// Por lo tanto:
// Ciclos de bucle en us = __US = Microsegundos x (1000000/(FOSC/TICKS))
// 2 + 2 + __Delay_Count_1 x 2 + 3 x __Delay_Count_2 + 2 x __Delay_Count_3 x (__Delay_Count_2 - 1) + 2 =
// 6 + 2 x __Delay_Count_1 + 3 x __Delay_Count_2 + 2 x __Delay_Count_3 x (__Delay_Count_2 - 1)
//
// Para 1000 ciclos:
// Si __Delay_Count_3 = 100 y __Delay_Count_2 = 4
// __Delay_Count_1 = (__US - 6 - (3 x __Delay_Count_2 + 2 x __Delay_Count_3 x (__Delay_Count_2 - 1)))/ 2 =
//                   (1000 - 6 - (3 x 4 + 2 x 100 x (4 - 1))) / 2 =
//                   (1000 - 6 - (12 + 200 x 3)) / 2 =
//                   (1000 - 6 - 612) / 2 = 191

//#define __Ciclos_1000us (1000 * (1000000 /(FOSC / TICKS)))
//#define __Delay_Count_2 __Ciclos_1000us/250
//#define __Delay_Count_3 __Ciclos_1000us/10
//#define __Delay_Count_1 ((__Ciclos_1000us - 6 - ((3 * __Delay_Count_2) + (2 * __Delay_Count_3 * (__Delay_Count_2 - 1)))) / 2)
//#define __Delay_Count_1_1 ((__Delay_Count_1*2)+4-12)/2  // Ajuste: Sin salto a función (+4) y loop while delay_ms (-12)
/* Lo máximo que puede contar son 131.846 uS = 131,846 ms = 0,131846 segundos */
//void delay_1ms(void)
//{
//    __asm
//                                           // 2 ciclos CALL a función
//            mov  ar6,#__Delay_Count_1      // 1 ciclo maquina.
//            mov  ar7,#__Delay_Count_2      // 1 ciclo maquina
//        Delay_1_Loop:
//            djnz ar6,Delay_1_Loop          // 2 ciclos maquina.
//            mov  ar6,#__Delay_Count_3      // 1 ciclo maquina.
//            djnz ar7,Delay_1_Loop          // 2 ciclos maquina.
//                                           // 2 ciclos RET de función
//    __endasm;
//}


/* Muy aproximadamente ya que no tiene en cuenta el tiempo de llamada y retorno  */
/* a la función, ni el tiempo empleado en el bucle while.                        */
//#pragma disable_warning 85
//void delay_ms(uint16_t delayTimeUS)
//{
//    while(itime--)
//        delay_1ms();  // 1 ms
// Partiendo el código ASM generado:
// ---------------------------
//_delay_ms:
//	mov	r6,dpl
//	mov	r7,dph
//;	delay_Lib.h:155: while(itime--)
//00101$:
//	mov	ar4,r6
//	mov	ar5,r7
//	dec	r6
//	cjne	r6,#0xff,00113$
//	dec	r7
//00113$:
//	mov	a,r4
//	orl	a,r5
//	jz	00104$
//;	delay_Lib.h:156: delay_1ms();  // 1 ms
//	push	ar7
//	push	ar6
//	lcall	_delay_1ms
//	pop	ar6
//	pop	ar7
//	sjmp	00101$
//00104$:
//	ret
// ---------------------------
//  Se puede hacer un bloque ASM para contar microsegundos con total exactitud.
//    __asm
//            mov    r6,dpl     // Carga delayTimeUS.LOW   (2 ciclos)
//            mov    r7,dph     // Carga delayTimeUS.HIGH  (2 ciclos)
//        // while(delayTimeUS--)
//        delay_ms_loop_while:
//            dec    r6                                // 1 ciclo
//            cjne   r6,#0xff,delay_ms_nops_siguiente  // 2 ciclos
//            dec    r7                                // 1 ciclo
//            sjmp   delay_ms_siguiente_loop_while     // 2 ciclos
//        delay_ms_nops_siguiente:
//            nop                                      // para que todos los loops
//            nop                                      // tengan el mismo número
//            nop                                      // de ciclos.
//        delay_ms_siguiente_loop_while:
//            mov    a,r6                              // 1 ciclo
//            orl    a,r7                              // 1 ciclo
//            jz     delay_ms_end_loop_while           // 2 ciclos
//
//        // --- delay 1 ms -----------------------------------
//            mov    r4,#__Delay_Count_1_1         // 1 ciclo maquina.
//            mov    r5,#__Delay_Count_2           // 1 ciclo maquina
//        delay_ms_1ms_Loop:
//            djnz   r4,delay_ms_1ms_Loop          // 2 ciclos maquina.
//            mov    r4,#__Delay_Count_3           // 1 ciclo maquina.
//            djnz   r5,delay_ms_1ms_Loop          // 2 ciclos maquina.
//        // --------------------------------------------------
//
//            sjmp   delay_ms_loop_while               // 2 ciclos
//        delay_ms_end_loop_while:
//    __endasm;
//}

#endif // __DELAY_LIB_H
