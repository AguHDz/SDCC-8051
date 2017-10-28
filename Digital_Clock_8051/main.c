/*
*  (C) AguHDz 20-OCT-2017
*  Ultima Actualizacion: 28-OCT-2017
*
*  Compilador SDCC v.3.6.0 (http://sdcc.sourceforge.net)
*
*  Microcontrolador: AT89C2051
*
*  RELOJ DIGITAL (TEST COMPARACION COMPILADORES)
*  =============================================
*  Este proyecto es una demostración del uso del compilador SDCC con
*  el microcontrolador AT89C2051 para hacer un reloj de tiempo real con
*  el integrado DS1307.
*
*  Se trata de un reloj totalmente funcional con tres botones de ajuste
*  SET, INC y DEC.
*
*  Ajuste:
*
*  1. Pulsar SET durante 1 segundo.
*  2. Aparece el cursor bajo los dígitos de año. Pulsar INC para
*     incremetar el año o DEC para decrementarlo. Cada pulsación
*     produce el avance o retroceso de una unidad del digito
*     editado. La pulsación larga permite un avance o retroceso
*     repetitivo haciendo más cómodo el ajuste.
*  3. Pulsar SET para pasar a la edición del mes y proceder del
*     mismo modo que en el ajuste del año pulsando INC o DEC.
*  4. Pulsar SET para ajustar del mismo modo el día del mes, hora,
*     y minutos. (los segundos siempre se inIcian a cero después
*     de cada ajuste)
*  5. Tras ajustar minutos y pulsar SET se pasa a la edición del
*     día de la semana (LUN...DOM). Proceder de igual manera
*     pulsando INC o DEC.
*  6. Pulsar SET para finalizar ajuste. El reloj comienza a funcionar
*     con la nueva hora y día.
*
*  NOTAS:
*  - Durante la edición, llegado al límete inferior o superior del
*    dígito editado se pasa automáticamente al valor inferior o
*    superior. Límites:
*        - Año: 00..99
*        - Mes: 01..12
*        - Día: 01..31 (28, 29 o 30 dependiendo del mes)
*        - Hora: 00..23
*        - Minuto: 00..59
*        - Día de Semana: LUN..DOM
*  - El límite superior del mes de febrero para años bisiestos
*    y los meses de 30 y 31 días los ajusta el programa de manera
*    automática. En caso de error en la edición, corrige el valor
*    de manera automática al límite superior válido para el mes.
*  - El integrado DS1307 es un reloj de tiempo real que funciona
*    de manera autónoma, y que sigue funcionando gracias a su batería
*    sin necesidad de suministro eléctrico exterior, por lo que no es
*    necesario ajustar el reloj cada vez que se desconecta la
*    alimentación. Gracias a su bajo consumo, con una batería
*    tipo botón estándar de 48mAh puede seguir funcionando durante
*    más de 10 años sin necesidad de suministro eléctrico exterior.
*/
#include <mcs51/at89x51.h>  // AT89C2051 - 2K Flash Code - 128 bits RAM.
                            //             P1.0-P1.7 & P3.0-P3.5 & P3.7
#include<stdio.h>
#include<stdint.h>       // Incluye los formatos numéricos estandar int_XXt, uint_XXt
#include <stdbool.h>     // Define el tipo de dato a bit (bool o boolean)

// Pausas (Delay)
#define FOSC                4000000L    // 8 MHz
#define TICKS               12          // Cada Ciclo máquina = 12 Ciclos de Reloj.
#include "../Libs/delay.h"   // Calcula e incluye la definción DELAY_US(t)

// Comunicación I2C
#define SDA                 P1_0   // Pin SDA del bus I2C
#define SCL                 P1_1   // Pin SCL del bus I2C
#include "../Libs/I2C.h"           // Librería de comunicación I2C

// RTC DS1307
#include "../Libs/DS1307.h"
#define SOUT                P3_5   // Pin que lee la salida SOUT

// Display LCD
#define LCD_BUS_DATA_BITS   4      // Bus de datos de 4 bits.
#define LCD_DATA_4          P1_4   // Pines de datos
#define LCD_DATA_5          P1_5
#define LCD_DATA_6          P1_6
#define LCD_DATA_7          P1_7
#define LCD_RS              P1_2  // Pin RS
#define LCD_EN              P1_3  // Pin Enable
#include "../Libs/LCD.h"              // Librería Display LCD

// Pulsadores
#define P_INC     P3_2            // Pulsador INC
#define P_DEC     P3_3            // Pulsador DEC
#define P_SET     P3_4            // Pulsador SET
#define TIEMPO_ANTIREBOTE 10      // Milisegundos espera evitar rebote mecánico de pulsador.
#define TIEMPO_REPETICION 500     // Milisegundos pulsación continua que equivale a otra pulsación.

//#define bool __bit           // Redefine tipo de variable bit en zona RAM de uC direccionable a bits.

uint8_t  k, timeSec_old;     // Variables Auxiliares.
const char DiaSemanaTxt [7][4] = {"DOM", "LUN", "MAR", "MIE", "JUE", "VIE", "SAB" };

/****************************************************************************
  - Función: LCDPrintDiaSemana
  - Descripción: Muesta en display LCD el día de la semana actual en
    formato texto.
  - Variables Entrada:
      - dia: Día de la semana en formato numérico (0:Domingo... 6:Sábado)
  - Variables Salida: Ninguna.
*****************************************************************************/
void LCDPrintDiaSemana(void)
{
    LCD_print(DiaSemanaTxt[DS1307_time.DiaSemana-1]);
}

/****************************************************************************
  - Función: bisiesto
  - Descripción: Comprueba si el año actual es bisiesto [margen de 2000 a 2099].
      Para otros márgenes de años, habría que aplicar el algoritmo genérico
      teniendo en cuenta los años múltiplos de 100 o 400.
  - NOTAS: Detalle curioso. Para siglos anteriores al XX, habría que tener en
      cuenta que en España y otros países catolicos el mes de octubre de 1582
      sólo tuvo 20 días. Ese mes, el día siguiente al jueves 4 fue viernes 15.
      En el resto del mundo, el cambio fue produciendose en los siguientes
      siglos (hasta el XX). Por ejemplo, en Inglaterra y colonias fue en 1752
      (el día siguiente al 03/09/1752 fue 14/091782). Este cambio introdujo
      las reglas actuales para los años multiplos de 100 y 400.
  - Entrada: Ninguna.
  - Salida:
      > Devuelve 1 si el año es bisiesto, y 0 si no lo es.
*****************************************************************************/
bool bisiesto(void)
{
    // Devuelve 0 si (DS1307_timeAno%4)!=0, y 1 si (DS1307_timeAno%4)==0
    return !(DS1307_time.Ano%4);
}

/****************************************************************************
  - Función: diasDelMes
  - Descripción: Devuelve el número de días de cualquier mes del año actual.
  - Variables Entrada: Ninguna.
  - Variables Salida:
      > Número en días del mes.
*****************************************************************************/
uint8_t diasDelMes(void)
{
    if(DS1307_time.Mes==2)                        // Mes = febrero
    {
        return bisiesto() ? 29 : 28;  // Bisiesto: 29 días / No bisiesto: 28 días.
    }
    if((DS1307_time.Mes==4) || (DS1307_time.Mes==6) || (DS1307_time.Mes==9) || (DS1307_time.Mes==11))
    {
        return 30;                    // Meses de 30 días.
    }
    return 31;                        // Meses de 31 días.
}

void LCDPrintNumero(uint8_t numero)
{
    LCD_putChar((numero/10)+48);   // Imprime dígito decena.
    LCD_putChar((numero%10)+48);   // Improme dígito unidad.
}

/****************************************************************************
  - Función: timeShow
  - Descripción: Muestra en el display LCD la fecha y hora.
  - Entrada: Ninguna.
  - Salida: Ninguna.

  - PENDIENTE: Sustituir la función estándar sprintf() por una función para
               imprimir dos dígitos. El programa infrautiliza sprintf() que
               ocupa 700 bytes, según se ve en el fichero .MAP
*****************************************************************************/
void timeShow(void)
{
    LCD_gotoXY(1,0);
    LCDPrintNumero(DS1307_time.Dia);
    LCD_putChar('/');
    LCDPrintNumero(DS1307_time.Mes);
    LCD_putChar('/');
    LCDPrintNumero(DS1307_time.Ano);
    LCD_print("   ");
    LCDPrintDiaSemana();
    LCD_print(" ");
    LCD_gotoXY(1,1);
    LCDPrintNumero(DS1307_time.Hora);
    LCD_putChar(':');
    LCDPrintNumero(DS1307_time.Minuto);
    LCD_putChar(':');
    LCDPrintNumero(DS1307_time.Segundo);
    LCD_print("       ");
}

void cicloTimeSet(uint8_t limInf, uint8_t limSup, uint8_t lcdX, uint8_t lcdY, uint8_t* dato)
{
    while((P_INC && P_DEC)==0)  // Si se pulsa INC o DEC
    {
        LCD_CURSOR_OFF;
        if(P_INC==0)   // Si se ha pulsado INC
        {
            (*dato)++;
            if(*dato>limSup) *dato=limInf;
        }
        else           // Si se ha pulsado DEC
        {
            (*dato)--;
            if((*dato<limInf)||(*dato==0xFF)) *dato=limSup; // Si limInf==0 (*Dato)-- puede ser 0xFF.
        }
        LCD_gotoXY(lcdX, lcdY);
        if(lcdX==12) LCDPrintDiaSemana();  // Si se está editando del día de la semana, se imprime el texto.
        else LCDPrintNumero(*dato);        // El resto son variables numéricas de 2 dígitos.
        delay_ms(TIEMPO_REPETICION);
    }
    if(P_SET==0)
    {
        k++;
        while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);  // Espera antirebote mecánico del pulsador.
        if(*dato>limSup) *dato=limSup;  // Evita posible bug al modificar el año o el mes, si
                                        // no se modifica el día y en ese año o mes ya no es válido.
    }
    if(lcdX==12) lcdX++;       // Si se está editando el día de la semana, se desplaza el cursor
                               // una posición más, ya que el texto ocupa 3 posiciones, en lugar
                               // de dos como el resto de variables.
    LCD_gotoXY(++lcdX, lcdY);
    LCD_CURSOR_UNDELINE;       // Cursor On
}

/****************************************************************************
  - Función: timeRead
  - Descripción: Set fecha y hora mediante pulsadores y cursor en display LCD.
    Programado según la lógica de una "máquina de estado". La variable global
    k indica la posición del cursor dentro del bucle de fijación de fecha y
    hora.
  - Entrada: Ninguna.
  - Salida: Ninguna.
*****************************************************************************/
void timeSet(void)
#define SET_ANO             1
#define SET_MES             2
#define SET_DIA             3
#define SET_HORA            4
#define SET_MINUTO          5
#define SET_DIA_SEM         6
#define SALIR_SET_TIME      7
{
    LCD_gotoXY(7,1);           // Goto posición de Segundos en display.
    LCD_print("00");           // 00 en posición de Segundos del display.
    LCD_CURSOR_UNDELINE;       // Cursor On
    DS1307_time.Segundo = 0;   // Siempre que se ajusta la fecha y hora los segundos empiezan en cero.
    while(k<SALIR_SET_TIME)
    {
        while(k==SET_ANO)     cicloTimeSet(0,99,7,0,&DS1307_time.Ano);            // Set año.
        while(k==SET_MES)     cicloTimeSet(1,12,4,0,&DS1307_time.Mes);            // Set mes.
        while(k==SET_DIA)     cicloTimeSet(1,diasDelMes(),1,0,&DS1307_time.Dia);  // Set día.
        while(k==SET_HORA)    cicloTimeSet(0,23,1,1,&DS1307_time.Hora);           // Set hora.
        while(k==SET_MINUTO)  cicloTimeSet(0,59,4,1,&DS1307_time.Minuto);         // Set minutos.
        while(k==SET_DIA_SEM) cicloTimeSet(1,7,12,0,&DS1307_time.DiaSemana);      // Set día de la semana.
    }
    LCD_CURSOR_OFF;
}


/****************************************************************************
  - Función: Setup
  - Descripción: Inicializa Microcontrolador y Hardware externo conectado.
  - Entrada: Ninguna.
  - Salida: Ninguna.
*****************************************************************************/
void setup(void)
{
    P_INC = 1;   // Configura Pulsadores como Entradas Digitales.
    P_DEC = 1;
    P_SET = 1;
    SOUT  = 1;

    DS1307_sout(0x90);  // Configura 1 Hz en salida SOUT del DS1307

    LCD_init();  // Inicializa display LCD.
}

/****************************************************************************
  - Función: main
  - Descripción: Programa Principal.
  - Entrada: Ninguna.
  - Salida: Ninguna.
*****************************************************************************/
void main(void)
{
    setup();

    while(1)
    {
        if(P_SET==0)                          // Comprueba si se ha pulsado SET
        {
            k=1;
            while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);  // Espera fin pulsación y antirebote mecánico.
            timeSet();
            DS1307_timeWrite();
        }

        DS1307_timeRead();

        timeShow();      // Actualiza display LCD con fecha y hora.

        while(SOUT);
        while(!SOUT);

        // Evita lecturas continuas el reloj y reescrituras en display.
        // Además produce efecto de espera en pulsador SET.
//        if(DS1307_time.Segundo != timeSec_old)
//        {
//            timeShow();      // Actualiza display LCD con fecha y hora.
//            timeSec_old = DS1307_time.Segundo;
//            refresco    = 800;
//        }
//        else refresco = 50;
//        delay_ms(refresco);
    }
}
