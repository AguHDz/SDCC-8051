//
// Librería manejo integrado displays LCD compatibles con el estándar HITACHI HD44780.
//

#ifndef __LCD_LIB_H
#define __LCD_LIB_H

/* 1 ms para velocidad 12 MHz de velocidad reloj microcontrolador */
/* xt_clock = 12000000 HZ                                         */
/* tiempo_ciclo_maquina_us  1000000/(xt_clock/12) = 1us           */
/* Para otras velocidades, ajustar los valores de r6 y r7         */
//void delay_1ms(void)
//{
//    __asm
//                                   ; 2 ciclos CALL a función
//            mov r6,#246            ; 1 ciclo maquina.
//            mov r7,#2              ; 1 ciclo maquina
//        Delay_1_Loop:
//            djnz r6,Delay_1_Loop   ; 2 ciclos maquina.
//        Delay_2_Loop:
//            mov r6,#247            ; 1 clico maquina.
//            djnz r7,Delay_1_Loop   ; 2 ciclos maquina.
//                                   ; 2 ciclos RET de función
//    __endasm;
//}
//
//
///* Muy aproximadamente ya que no tiene en cuenta el tiempo de llamada y retorno  */
///* a la función, ni el tiempo empleado en el bucle while.                        */
//void delay_ms(int16_t itime)
//{
//    while(itime--)
//        delay_1ms;  // 1 ms
//}

  // LCD commands
  // Indentation means: values have to be summed up with the non indented value.
  // e.g. use "LCDCommand(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON)" to switch the
  // display on, with no underline cursor and cursor not blinking.


// ---------------------------------------------------------------------------
// COMANDOS PARA DISPLAY LCD COMPATIBLE CON ESTANDAR HITACHI HD44780
// ---------------------------------------------------------------------------
#define LCD_CLEAR_DISPLAY               0x01

#define LCD_DISPLAY_AND_CURSOR_HOME     0x02

#define LCD_CHARACTER_ENTRY_MODE        0x04
#define     LCD_INCREMENT               0x02
#define     LCD_DECREMENT               0x00
#define     LCD_DISPLAY_SHIFT_ON        0x01
#define     LCD_DISPLAY_SHIFT_OFF       0x00

#define LCD_DISPLAY_ON_OFF_AND_CURSOR   0x08
#define     LCD_DISPLAY_ON              0x04
#define     LCD_DISPLAY_OFF             0x00
#define     LCD_CURSOR_UNDERLINE_ON     0x02
#define     LCD_CURSOR_UNDERLINE_OFF    0x00
#define     LCD_CURSOR_BLINK_ON         0x01
#define     LCD_CURSOR_BLINK_OFF        0x00

#define LCD_DISPLAY_AND_CURSOR_SHIFT    0x10
#define     LCD_DISPLAY_SHIFT           0x08
#define     LCD_CURSOR_MOVE             0x00
#define     LCD_RIGHT                   0x04
#define     LCD_LEFT                    0x00

#define LCD_FUNCTION_SET                0x20
#define     LCD_8BIT_INTERFACE          0x10
#define     LCD_4BIT_INTERFACE          0x00
#define     LCD_2LINES                  0x08
#define     LCD_1LINE                   0x00
#define     LCD_F_FONT_5_10             0x02
#define     LCD_F_FONT_5_8              0x00

#define LCD_SET_DISPLAY_ADDRESS         0x80
#define     LCD_ROW_0                   0x00
#define     LCD_ROW_1                   0x40
#define     LCD_ROW_2                   0x14
#define     LCD_ROW_3                   0x54

#define LCD_SET_CGRAM_ADDRESS           0x40
// ---------------------------------------------------------------------------

// Valore de RS.
#define LCD_CmdMode   0    // Indicador envío de Comando (instrucción de configuración)
#define LCD_CharMode  1    // Indicador envío de Dato (carácter)

// Librería de retardos.
#include "delay_Lib.h"

#if LCD_BUS_DATA_BITS == 4
void LCD_send4Bits(char date)
{
    LCD_DATA_4 = (date & 0x10);
    LCD_DATA_5 = (date & 0x20);
    LCD_DATA_6 = (date & 0x40);
    LCD_DATA_7 = (date & 0x80);
    LCD_EN     = 1;
    delay_ms(1);
    LCD_EN     = 0;
    delay_ms(1);
}

void LCD_send(char date)
{
    LCD_send4Bits(date);
    LCD_send4Bits(date<<4);
}
#elif LCD_BUS_DATA_BITS == 8
void LCD_send(char date)
{
    LCD_DATA = date;
    LCD_EN     = 1;
    delay_ms(1);
    LCD_EN     = 0;
    delay_ms(1);
}
#endif // LCD_BUS_DATA_BITS

void LCD_command(char comm)
{
    LCD_RS = LCD_CmdMode;
    LCD_send(comm);
}

void LCD_putChar(char chr)
{
    LCD_RS = LCD_CharMode;
    LCD_send(chr);
}

//-----------------------------------------------------------------------------
void LCD_gotoXY(char columna, char fila)
{
  if(fila == 0)
    LCD_command(LCD_SET_DISPLAY_ADDRESS + columna + LCD_ROW_0);
  else if (fila == 1)
    LCD_command(LCD_SET_DISPLAY_ADDRESS + columna + LCD_ROW_1);
  else if (fila == 2)
    LCD_command(LCD_SET_DISPLAY_ADDRESS + columna + LCD_ROW_2);
  else if (fila == 3)
    LCD_command(LCD_SET_DISPLAY_ADDRESS + columna + LCD_ROW_3);
}
//-----------------------------------------------------------------------------
void LCD_cursorHome(void)
{
  LCD_command(LCD_DISPLAY_AND_CURSOR_HOME);
}
//-----------------------------------------------------------------------------
void LCD_clear(void)
{
  LCD_command(LCD_CLEAR_DISPLAY);
}
//-----------------------------------------------------------------------------
void LCD_cursorUnderline(void)
{
  LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON + LCD_CURSOR_UNDERLINE_ON);
}
//-----------------------------------------------------------------------------
void LCD_cursorBlink(void)
{
  LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON + LCD_CURSOR_BLINK_ON);
}
//-----------------------------------------------------------------------------
void LCD_cursorUnderlineBlink(void)
{
  LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON + LCD_CURSOR_UNDERLINE_ON + LCD_CURSOR_BLINK_ON);
}
//-----------------------------------------------------------------------------
void LCD_cursorOff(void)
{
  LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON + LCD_CURSOR_UNDERLINE_OFF + LCD_CURSOR_BLINK_OFF);
}
//-----------------------------------------------------------------------------
void LCD_displayOn(void)
{
  LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON);
}
//-----------------------------------------------------------------------------
void LCD_displayOff(void)
{
  LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_OFF);
}
//-----------------------------------------------------------------------------
//void LCD_Cursor(OnOff, Underline, Blink : boolean)(void)
//var
//  command : byte;
//{
//  command := LCD_DISPLAY_ON_OFF_AND_CURSOR;
//  if OnOff then command := command + LCD_DISPLAY_ON; end;
//  if Underline then command := command + LCD_CURSOR_UNDERLINE_ON; }
//  if Blink then command := command + LCD_CURSOR_BLINK_ON; }
//  LCD_command(command);
//}
//-----------------------------------------------------------------------------
void LCD_displayShiftRight(void)
{
  LCD_command(LCD_DISPLAY_AND_CURSOR_SHIFT + LCD_DISPLAY_SHIFT + LCD_RIGHT);
}
//-----------------------------------------------------------------------------
void LCD_displayShiftLeft(void)
{
  LCD_command(LCD_DISPLAY_AND_CURSOR_SHIFT + LCD_DISPLAY_SHIFT + LCD_LEFT);
}
//-----------------------------------------------------------------------------
void LCD_displayCursorRight(void)
{
  LCD_command(LCD_DISPLAY_AND_CURSOR_SHIFT + LCD_CURSOR_MOVE + LCD_RIGHT);
}
//-----------------------------------------------------------------------------
void LCD_displayCursorLeft(void)
{
  LCD_command(LCD_DISPLAY_AND_CURSOR_SHIFT + LCD_CURSOR_MOVE + LCD_LEFT);
}
//-----------------------------------------------------------------------------
void LCD_createChar(char charnum,
                    char chardata0,
                    char chardata1,
                    char chardata2,
                    char chardata3,
                    char chardata4,
                    char chardata5,
                    char chardata6,
                    char chardata7)
{
  charnum = charnum & 0x07;  // Previene errores sin charnum > 7;
  charnum = charnum << 3;
  LCD_command(LCD_SET_CGRAM_ADDRESS + charnum);
  LCD_putChar(chardata0);
  LCD_putChar(chardata1);
  LCD_putChar(chardata2);
  LCD_putChar(chardata3);
  LCD_putChar(chardata4);
  LCD_putChar(chardata5);
  LCD_putChar(chardata6);
  LCD_putChar(chardata7);
  LCD_clear;    // Necesario para finalizar la creacion de Custom Character.
}


void LCD_print(char *str)
{
    while(*str)
    {
        LCD_putChar(*str);
        str++;
    }
}

void LCD_init(void)
{
#if LCD_BUS_DATA_BITS == 4
    LCD_DATA_4 = 0;              // Pines iniciados como salida.
    LCD_DATA_5 = 0;
    LCD_DATA_6 = 0;
    LCD_DATA_7 = 0;
    LCD_RS     = 0;
    LCD_EN     = 0;
#elif LCD_BUS_DATA_BITS == 8
    LCD_DATA = 0XFF;             // Todos lo pines de puerto como salida.
#endif // LCD_BUS_DATA_BITS

// -- INICIALIZACION POR SOFTWARE DE DISPLAY LCD.
  // Los tiempos de espera son los indicados en todos los
  // datasheets de los displays compatibles con el estandar Hitachi HD44780.
    delay_ms(30);    // Espera 15 ms o más.

#if LCD_BUS_DATA_BITS == 4
  // INICIACION DE DISPLAY MODO 4 BITS DE DATOS.
  LCD_send4Bits(0b00110000);
  delay_ms(5);  // Espera > 4.1 ms
  LCD_send4Bits(0b00110000);
  delay_ms(1);  // Espera > 100 us
  LCD_send4Bits(0b00110000);
  LCD_send4Bits(0b00100000);
  LCD_command(LCD_FUNCTION_SET + LCD_4BIT_INTERFACE + LCD_2LINES + LCD_F_FONT_5_8);
#elif LCD_BUS_DATA_BITS == 8
  // INICIACION DE DISPLAY MODO 8 BITS DE DATOS.
  LCD_command(LCD_FUNCTION_SET + LCD_8BIT_INTERFACE);
  delay_ms(5);  // Espera > 4.1 ms
  LCD_command(LCD_FUNCTION_SET + LCD_8BIT_INTERFACE);
  delay_ms(1);  // Espera > 100 Us
  LCD_command(LCD_FUNCTION_SET + LCD_8BIT_INTERFACE + LCD_2LINES + LCD_F_FONT_5_8);
#endif // LCD_BUS_DATA_BITS
// -- FIN DE INICIALIZACION POR SOFTWARE DEL DISPLAY LCD.

// -- CONFIGURACION DE DISPLAY LCD.
  LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_OFF);
  LCD_command(LCD_CHARACTER_ENTRY_MODE + LCD_INCREMENT + LCD_DISPLAY_SHIFT_OFF);
  LCD_command(LCD_DISPLAY_ON_OFF_AND_CURSOR + LCD_DISPLAY_ON);
  LCD_command(LCD_CLEAR_DISPLAY);
}

#endif // __LCD_LIB_H
