/*
 *	max7219 Driver based on MCU 51
 *
 */

#include <mcs51/8051.h>
/*****************************
Macro definition statement
*****************************/
//common part
#define  HIGH     1
#define  LOW      0
#define  TRUE     1
#define  FALSE    0
#define  ZERO     0
#define  MSB      0x80
#define  LSB      0x01

//#define  DIGIT_DECODE 1    // DECODIFICA CODIGO COMO DIGITOS
                           // NO DECODIFICA DIGITOS. EL CODIGO ENVIADO ENCIENDO SEGMENTOS DE CADA DIGITO

//max7219 part
#define  DECODE_MODE   0x09
#define  INTENSITY     0x0A
#define  SCAN_LIMIT    0x0B
#define  SHUT_DOWN     0x0C
#define  DISPLAY_TEST  0x0F

/*************************************************************************
Pin definition:
Different circuit board, to change the definition here,
*************************************************************************/
#define LOAD P3_5   //MAX7219    Load-Data Input:    	rising edge  	pin 12
#define DIN  P3_6 	//MAX7219    Serial-Data Input:   	rising edge  	pin 1
#define CLK  P3_7 	//MAX7219   Serial-Clock Input:  	maximum 10MHz  	pin 13

/***********************************************************
Function declaration
***********************************************************/
void Write_Max7219_byte(unsigned char temp);
void Write_Max7219(unsigned char address,unsigned char dat);
void Init_Max7219(void);
void delay(void);

/***************
Test procedures
Display 1~8
***************/
void main(void)
{
	unsigned char i,j;

#if DIGIT_DECODE
     // DIGIT_CODE
	Init_Max7219();
	while(TRUE)
	{
		for(j=0; j<16; j++)
        {
            if (j/10) Write_Max7219(1,j/10);
            else Write_Max7219(1,15);           // Espacio en blanco
            Write_Max7219(2,j%10);
            Write_Max7219(3,10);
            for(i=4; i<9; i++)
            {
                Write_Max7219(i,j);
            }
            delay();
        }
#else
    #define PUNTO   0b10000000
    #define BLANCO  0b00000000

	unsigned char dot=0b00000000;
    const char dato[]={
        0b01111110,     // 0,O
        0b00110000,     // 1,barra izquierda
        0b01101101,     // 2,Z
        0b01111001,     // 3
        0b00110011,     // 4
        0b01011011,     // 5,S
        0b01011111,     // 6
        0b01110000,     // 7
        0b01111111,     // 8
        0b01111011,     // 9,g
        0b01110111,     // A
        0b00011111,     // b
        0b01001110,     // C
        0b00111101,     // d
        0b01001111,     // E
        0b01000111,     // F
        0b00001101,     // c
        0b01101111,     // e
        0b00110111,     // H
        0b00010111,     // h
        0b00000100,     // i
        0b00000110,     // I,barra derecha
        0b00111000,     // J
        0b00001110,     // L
        0b01110110,     // N
        0b00010101,     // n
        0b01010101,     // ñ
        0b00011101,     // o
        0b01100111,     // P
        0b00000101,     // r
        0b00001111,     // t
        0b00111110,     // U
        0b00011100,     // u
        0b00111011,     // y
        0b01000000,     // barra A (superior)
        0b00001000,     // barra D (inferior)
        0b00000001,     // barra G (central)
        0b00110001,     // signo + (el carter siguiente tiene que se una barra central)
        0b00001001,     // signo =
        PUNTO     ,     // .
        BLANCO          // Espacio en blanco
        };
    enum { CERO, UNO, DOS, TRES, CUADRO, CINCO, SEIS, SIETE, OCHO, NUEVO,
           AA, be, CE, de, EE, EFE,
           ce, ee, HACHE, hache, ii, II, JOTA, ELE, ENE, ene, enie, oo, PE, ere,
           te, UU, uu, yy, BARRA_SUPERIOR, BARRA_INFERIOR, BARRA_CENTRAL, SIGNO_MAS,
           SIGNO_IGULA};

	Init_Max7219();

    while(TRUE)
	{
        // Muesta en display el texto: HOLA
        Write_Max7219(1,dato[HACHE]);
        Write_Max7219(2,dato[CERO]);
        Write_Max7219(3,dato[ELE]);
        Write_Max7219(4,dato[AA]);
        delay();
        delay();
        delay();
        delay();
        delay();
        delay();
        delay();

        // SALUdOS
        Write_Max7219(1,dato[CINCO]);
        Write_Max7219(2,dato[AA]);
//        Write_Max7219(3,dato[ELE]);
        Write_Max7219(4,dato[UU]);
        Write_Max7219(5,dato[de]);
        Write_Max7219(6,dato[oo]);
        Write_Max7219(7,dato[CINCO]);
        delay();
        delay();
        delay();
        delay();
        delay();
        delay();
        delay();

        // A tOdOS
        Write_Max7219(1,dato[AA]);
        Write_Max7219(2,BLANCO);
        Write_Max7219(3,dato[te]);
        Write_Max7219(4,dato[oo]);
//        Write_Max7219(5,dato[de]);
//        Write_Max7219(6,dato[oo]);
//        Write_Max7219(7,dato[CINCO]);
        delay();
        delay();
        delay();
        delay();
        delay();
        delay();
        delay();
        delay();

        // Efecto borrado con movimiento de linea inferior
        for (i=0; i<9; i++)
        {
            Write_Max7219(i,(dato[BARRA_INFERIOR]));
            delay();
            Write_Max7219(i,BLANCO);
        }

        // Muestar todos los caracteres disponibles
        for(j=0;j<41;j++)
        {
            for(i=0; i<8; i++)
            {
                Write_Max7219(i,(dato[j]));
            }
            Write_Max7219(i,(dato[j]|dot));
            delay();
            // Escribe y borra el dot (punto decimal) en el ultimo digito.
            if (dot) dot = 0;
            else dot = PUNTO;
        }
        // Si quedara el dot, lo borra antes de empezar nuevamente el bucle infinito.
        Write_Max7219(8,BLANCO);
#endif
	}
}
/******************************************
Subroutine to send a byte:
Rising edge sends data
MSB first
******************************************/
void Write_Max7219_byte(unsigned char temp)
{
	unsigned char i;
	for (i=0; i<8; i++)
	{
		CLK = LOW;
		DIN = (__sbit)(temp&MSB); //(bit)(temp&MSB);
		temp <<=1;
		CLK = HIGH;
	}
}
/**********************************************************
A data write to register
First write address, write data after
load Rising edge latch data
**********************************************************/
void Write_Max7219(unsigned char address,unsigned char dat)
{
	LOAD = LOW;
	Write_Max7219_byte(address);
	Write_Max7219_byte(dat);
	LOAD = HIGH;
}
/**********************
Initialize max7219 Functions
Set the working registers
Need to check the chip manual
**********************/
void Init_Max7219(void)
{
	Write_Max7219(SHUT_DOWN, 	0x01);   //Normal Operation XXXXXXX1 Shutdown Mode   XXXXXXXX0
	Write_Max7219(DISPLAY_TEST, 0x00);   //Normal Operation XXXXXXX0 Display Test Mode XXXXXXXX1
#if DIGIT_DECODE
     // DIGIT_CODE
	Write_Max7219(DECODE_MODE, 	0xFF);   //Decode Mode Select D7~D0 1 B decode 0 No decode
#else
	Write_Max7219(DECODE_MODE, 	0x00);   //No decode for digits 7–0
#endif
	Write_Max7219(SCAN_LIMIT, 	0x07);   //SCAN LIMIT 0~7 0xX0~0xX7
	Write_Max7219(INTENSITY, 	0x04);   //Set Intensity   0xX0~0xXf
}

void delay(void)
{
    unsigned int i;
    for(i=0;i<=40000;i++);
}
