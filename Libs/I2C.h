#ifndef __I2C_LIB_H
#define __I2C_LIB_H

#include <stdint.h>                // Define variables del modo estándar uint8_t, int16_t...
#include <stdbool.h>               // Define el tipo de dato a bit (bool o boolean)

// __I/O pin & estados__
#define SDA_HIGH        SDA = 1     // SDA nivel alto. (HIGH)
#define SDA_LOW         SDA = 0     // SDA nivel bajo. (LOW)
#define SDA_INPUT       SDA = 1     // SDA como entrada.
#define SDA_OUTPUT      SDA = 0     // SDA como salida.
#define SCL_HIGH        SCL = 1     // SCL nivel alto.
#define SCL_LOW         SCL = 0     // SCL nivel bajo.

void I2C_start(void);            	//"start" function for communicate I2C
void I2C_reStart(void);
void I2C_stop(void);   				//"stop" function for communicate I2C
bool I2C_writeByte(uint8_t dato);   //write data to I2C
uint8_t I2C_readByte(bool ACKBit);  //read data from I2C


void I2C_start(void)    //"start" function for communicate I2C
{
    SDA_HIGH;
    SCL_HIGH;
    SDA_LOW;
    SCL_LOW;
}

void I2C_reStart(void)
{
    SCL_LOW;
    SDA_HIGH;
    SCL_HIGH;
    SDA_LOW;
}

void I2C_stop(void)   //"stop" function for communicate I2C
{
    SDA_LOW;
    SCL_HIGH;
    SDA_HIGH;
}

bool I2C_writeByte(uint8_t dato)   //write data to I2C
{
    uint8_t i;
    bool ACKbit;

    // Escribe el dato.
    for(i=0; i<8; i++)
    {
        SDA = (dato & 0x80);       // SDA = bit de más peso del valor dato.
        SCL_HIGH;
        dato<<=1;
        SCL_LOW;
    }

    // Recibe el valor de ACK enviado por el SLAVE.
    SDA_INPUT;
    SCL_HIGH;
    ACKbit = SDA;
    SCL_LOW;
    SDA_OUTPUT;
    return ACKbit;
}

uint8_t I2C_readByte(bool ACKBit)   //read data from I2C
{
    uint8_t i;
    uint8_t dato = 0x00;

    // Recibe el dato.
    SDA_INPUT;
    for(i=0; i<8; i++)
    {
        dato<<=1;
        SCL_HIGH;
        if(SDA) dato|=1;
        SCL_LOW;
    }

    // Envía el valor de ACKBit
    SDA_OUTPUT;
    SDA = !ACKBit;
    SCL_HIGH;
    SCL_LOW;
    return dato;
}

#endif  // __I2C_LIB_H

