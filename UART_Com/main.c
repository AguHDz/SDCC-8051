/*
  Prueba de Puerto Serie en microcontrolador 8051 haciendo uso interrupcion para recobir caracter.
  Activa/Desactiva 8 salidas pulsanod las teclas 1 a 8 en el teclado del terminal serie al que se conecte.
 */

#include <mcs51/8052.h>

#define Baud_rate 0xFD  // BAUD RATE 9600 para CLOCK = 11.0592 MHz.

#define Salidas P1
#define Salida1 P1_0
#define Salida2 P1_1
#define Salida3 P1_2
#define Salida4 P1_3
#define Salida5 P1_4
#define Salida6 P1_5
#define Salida7 P1_6
#define Salida8 P1_7
#define CR 13
#define LF 10                   

void delay(unsigned int);
void SerialInitialize(void);
void SendByteSerially(unsigned char);    
void cct_init(void);
void SendStringSerally(char*);
void SendStringCRLFSerally(char*);
void SendStringONOFFSerally(char*,__sbit);
void SendCRLFSerially(void);

const char mensajeInicialLine1[]={"Para Activar/Desactivar Salidas (1-8) pulse las Teclas 1 a 8."};
const char mensajeInicialLine2[]={"Tecla 0 Desactiva todas las salidas."};
const char mensajeInicialLine3[]={"Tecla 9 Activa todas las salidas."};
unsigned char contador = 0;

void main()
{
    cct_init();
    SerialInitialize();
    ES = 0; 
    SendStringCRLFSerally(mensajeInicialLine1);
    SendStringCRLFSerally(mensajeInicialLine2);
    SendStringCRLFSerally(mensajeInicialLine3);

    ES=1;       // Habilita Interrupcion de Puerto Serie.
    EA=1;       // Habilita Interrupciones.

    while(1)
    {
        // Se puede hacer cualquier cosa, la recepccion serie produce interrupcion.
        P2_0=0;
        delay(40000);
        P2_0=1;
        delay(40000);
    }
}

void delay(unsigned int vueltas)
{
    unsigned int contador;
    for(contador=0; contador<vueltas; contador++);
}

void cct_init(void)   //initialize cct
{
    P0 = 0x00;      //not used
    P1 = 0x00;      //Used for Appliances
    P2 = 0x00;      //not used
    P3 = 0x03;      //used for serial
}

void SerialInitialize(void)                    // INITIALIZE SERIAL PORT
{
    TMOD = 0x20;                               // Timer 1 IN MODE 2 -AUTO RELOAD TO GENERATE BAUD RATE
    SCON = 0x50;                               // SERIAL MODE 1, 8-DATA BIT 1-START BIT, 1-STOP BIT, REN ENABLED
    TH1  = Baud_rate;                          // LOAD BAUDRATE TO TIMER REGISTER
    TR1  = 1;                                  // START TIMER
}

void SendByteSerially(unsigned char serialdata)
{    
    SBUF = serialdata;                         // LOAD DATA TO SERIAL BUFFER REGISTER
    while(TI == 0);                            // WAIT UNTIL TRANSMISSION TO COMPLETE
    TI = 0;                                    // CLEAR TRANSMISSION INTERRUPT FLAG
}

void SendCRLFSerially (void)
{
    SendByteSerially(CR);
    SendByteSerially(LF);
}

void SendStringSerally(char* cadena)
{
    unsigned char contador=0x00;
    while (cadena[contador])
    {
     SendByteSerially(cadena[contador++]);
    }
}

void SendStringCRLFSerally(char* cadena)
{
    SendStringSerally(cadena);
    SendCRLFSerially();
}

void SendStringONOFFSerally(char* texto, __sbit pinPuerto)
{
    SendStringSerally(texto);
    if (pinPuerto) SendStringCRLFSerally(" : ON");
    else SendStringCRLFSerally(" : OFF");
}

void serial_ISR (void) __interrupt (4)
{
    //receive character
    char chr=0x00;
    if(RI==1)
    {
        chr = SBUF;
        RI = 0;
    }

    switch(chr)
    {
    
     case '0':  Salidas = 0x00; SendStringCRLFSerally("Todas las Salidas : OFF");  break;
     case '1':  Salida1 = !Salida1; SendStringONOFFSerally("Salida 1",Salida1);    break;
     case '2':  Salida2 = !Salida2; SendStringONOFFSerally("Salida 2",Salida2);    break;
     case '3':  Salida3 = !Salida3; SendStringONOFFSerally("Salida 3",Salida3);    break;
     case '4':  Salida4 = !Salida4; SendStringONOFFSerally("Salida 4",Salida4);    break;
     case '5':  Salida5 = !Salida5; SendStringONOFFSerally("Salida 5",Salida5);    break;
     case '6':  Salida6 = !Salida6; SendStringONOFFSerally("Salida 6",Salida6);    break;
     case '7':  Salida7 = !Salida7; SendStringONOFFSerally("Salida 7",Salida7);    break;
     case '8':  Salida8 = !Salida8; SendStringONOFFSerally("Salida 8",Salida8);    break;
     case '9':  Salidas = 0xFF; SendStringCRLFSerally("Todas las Salidas : ON");   break;
     default: ;                                                                    break;     //do nothing
    }

    RI = 0;
}
