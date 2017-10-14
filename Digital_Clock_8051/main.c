/*
  Digital Clock using 8051 Microcontroller
  Este proyecto es una demostración del uso del compilador SDCC con
  el microcontrolador 8051 para hacer un reloj de tiempo real que como
  base de tiempos utiliza el integrado DC1307.
 */

#include <mcs51/8052.h>
#include<stdio.h>
#include<stdint.h>       // Incluye los formatos numéricos estandar int_XXt, uint_XXt

// Pausas (Delay)
#define FOSC                8000000L    // 8 MHz
#define TICKS               12          // Cada Ciclo máquina = 12 Ciclos de Reloj.
#include "delay_Lib.h"   // Calcula e incluye la definción DELAY_US(t)

// Comunicación I2C
#define SDA                 P2_1   // Pin SDA del bus I2C
#define SCL                 P2_0   // Pin SCL del bus I2C
#include "I2C_Lib.h"               // Librería de comunicación I2C

// RTC DS1307
#include "DS1307_LIB.h"
struct stime ahora;                // Estructura definida en librería DS1307_LIB.H
                                   // ahora guarda al fecha y hora actual.

// Display LCD
#define LCD_BUS_DATA_BITS   4      // Bus de datos de 4 bits.
#define LCD_DATA_4          P1_4   // Pines de datos
#define LCD_DATA_5          P1_5
#define LCD_DATA_6          P1_6
#define LCD_DATA_7          P1_7
#define LCD_RS              P1_0  // Pin RS
#define LCD_EN              P1_1  // Pin Enable
#include "LCD_LIB.H"              // Librería Display LCD

// Pulsadores
#define P_INC     P2_2            // Pulsador INC
#define P_DEC     P2_3            // Pulsador DEC
#define P_SET     P2_4            // Pulsador SET
#define TIEMPO_ANTIREBOTE 10      // Milisegundos espera evitar rebote mecánico de pulsador.
#define TIEMPO_REPETICION 500     // Milisegundos pulsación continua que equivale a otra pulsación.

#define bool __bit           // Redefine tipo de variable bit en zona RAM de uC direccionable a bits.
bool     ack;
uint8_t  k, timeSec_old;     // Variables Auxiliares.
uint16_t refresco;           // Tiempo de refresco del display (es variable)

/****************************************************************************
  - Función: LCDPrintDiaSemana
  - Descripción: Muesta en display LCD el día de la semana actual en
    formato texto.
  - Variables Entrada:
      - dia: Día de la semana en formato numérico (1:Domingo... 7:Sábado)
  - Variables Salida: Ninguna.
*****************************************************************************/
void LCDPrintDiaSemana(void)
{
    switch(ahora.DiaSemana)
    {
    case 1:
        LCD_print("DOM");
        break;
    case 2:
        LCD_print("LUN");
        break;
    case 3:
        LCD_print("MAR");
        break;
    case 4:
        LCD_print("MIE");
        break;
    case 5:
        LCD_print("JUE");
        break;
    case 6:
        LCD_print("VIE");
        break;
    case 7:
        LCD_print("SAB");
        break;
    }
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
    // Devuelve 0 si (ahoraAno%4)!=0, y 1 si (ahoraAno%4)==0
    return !(ahora.Ano%4);
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
    if(ahora.Mes==2)                        // Mes = febrero
    {
        return bisiesto() ? 29 : 28;  // Bisiesto: 29 días / No bisiesto: 28 días.
    }
    if((ahora.Mes==4) || (ahora.Mes==6) || (ahora.Mes==9) || (ahora.Mes==11))
    {
        return 30;                    // Meses de 30 días.
    }
    return 31;                        // Meses de 31 días.
}

void LCDPrintNumero(uint8_t numero)
{
    LCD_putChar((numero/10)+48);
    LCD_putChar((numero%10)+48);
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
    LCDPrintNumero(ahora.Dia);
    LCD_putChar('/');
    LCDPrintNumero(ahora.Mes);
    LCD_putChar('/');
    LCDPrintNumero(ahora.Ano);
    LCD_print("   ");
    LCDPrintDiaSemana();
    LCD_print(" ");
    LCD_gotoXY(1,1);
    LCDPrintNumero(ahora.Hora);
    LCD_putChar(':');
    LCDPrintNumero(ahora.Minuto);
    LCD_putChar(':');
    LCDPrintNumero(ahora.Segundo);
    LCD_print("       ");
}

void cicloTimeSet(uint8_t limInf, uint8_t limSup, uint8_t lcdX, uint8_t lcdY, uint8_t* dato)
{
    while((P_INC && P_DEC)==0)  // Si se pulsa INC o DEC
    {
        LCD_cursorOff();
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
        LCDPrintNumero(*dato);
        delay_ms(TIEMPO_REPETICION);
    }
    if(P_SET==0)
    {
        k++;
        while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);  // Espera antirebote mecánico del pulsador.
        if(*dato>limSup) *dato=limSup;  // Evita posible bug al modificar el año o el mes, si
                                        // no se modifica el día y en ese año o mes ya no es válido.
    }
    LCD_gotoXY(++lcdX, lcdY);
    LCD_cursorUnderline();
    //LCD_cursorBlink();
    //LCD_cursorUnderlineBlink();
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
    LCD_cursorUnderline();     // Cursor On
    //LCD_cursorBlink();
    //LCD_cursorUnderlineBlink();
    ahora.Segundo = 0;            // Siempre que se ajusta la fecha y hora los segundos empiezan en cero.
    while(k<SALIR_SET_TIME)
    {
        while(k==SET_ANO)    cicloTimeSet(0,99,7,0,&ahora.Ano);            // Set año.
        while(k==SET_MES)    cicloTimeSet(1,12,4,0,&ahora.Mes);            // Set mes.
        while(k==SET_DIA)    cicloTimeSet(1,diasDelMes(),1,0,&ahora.Dia);  // Set día.
        while(k==SET_HORA)   cicloTimeSet(0,23,1,1,&ahora.Hora);           // Set hora.
        while(k==SET_MINUTO) cicloTimeSet(0,59,4,1,&ahora.Minuto);         // Set minutos.
        while(k==SET_DIA_SEM)                                             // Set día de la semana.
        {
        // PENDIENTE de cálculo automático del día de la semana.
        // Algoritmo : https://www.gaussianos.com/como-calcular-que-dia-de-la-semana-fue
        // En lenguaje C: http://programador-apli.blogspot.com.es/2012/04/calcular-el-dia-de-la-semana-partir-de.html
            if(P_INC==0)
            {
                ahora.DiaSemana++;
                while(P_INC==0) delay_ms(TIEMPO_ANTIREBOTE);     // Espera fin pulsación y antirebote mecánico.
                if(ahora.DiaSemana==8)
                {
                    ahora.DiaSemana=1;
                }
                LCD_gotoXY(12,0);
                LCDPrintDiaSemana();
            }
            if(P_DEC==0)
            {
                ahora.DiaSemana--;
                while(P_DEC==0) delay_ms(TIEMPO_ANTIREBOTE);     // Espera fin pulsación y antirebote mecánico.
                if(ahora.DiaSemana==0)
                {
                    ahora.DiaSemana=7;
                }
                LCD_gotoXY(12,0);
                LCDPrintDiaSemana();
            }
            if(P_SET==0)
            {
                k=SALIR_SET_TIME;
                while(P_SET==0) delay_ms(TIEMPO_ANTIREBOTE);     // Espera fin pulsación y antirebote mecánico.
            }
            LCD_gotoXY(14,0);
        }
    }
    LCD_cursorOff();
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
            DS1307_timeWrite(&ahora);
        }

        DS1307_timeRead(&ahora);

        // Evita lecturas continuas el reloj y reescrituras en display.
        // Además produce efecto de espera en pulsador SET.
        if(ahora.Segundo != timeSec_old)
        {
            timeShow();      // Actualiza display LCD con fecha y hora.
            timeSec_old = ahora.Segundo;
            refresco    = 800;
        }
        else refresco = 50;
        delay_ms(refresco);
    }
}
