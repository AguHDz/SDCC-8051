//
// Librer�a manejo integrado Reloj de Tiempo Real (RTC) DS1307.
//

#ifndef __DS1307_LIB
#define __DS1307_LIB

#include "MATH_LIB.H"

struct stime
{
uint8_t  DiaSemana;     // D�a de la semana (formato num�rico 1..7)
uint8_t  Dia;           // D�a del mes.
uint8_t  Mes;           // Mes del a�o.
uint8_t  Ano;           // A�o (solo dos d�gitos)
uint8_t  Hora;          // Hora del d�a.
uint8_t  Minuto;        // Minuto de la hora.
uint8_t  Segundo;       // Segundo del minuto.
};

#define DS1307_CONF 0x80     // La librer�a no lo usa, por eso se define como
                             // una constante. (Desactiva salida SQWE)

/****************************************************************************
  - Funci�n: DS1307_timeRead
  - Descripci�n: Lee fecha y hora del DS1307 a trav�s del bus I2C.
  - Entrada: Ninguna.
  - Salida: Ninguna.
*****************************************************************************/
void DS1307_timeRead(struct stime *time)
{
    I2C_start();     // Inicia comunicaci�n I2C.
    I2C_send(0xD0);  // Direcci�n I2C del DS1307.
    I2C_send(0x00);  // Primera direcci�n a leer/escribir.
    I2C_start();     // Reinicia comunicaci�n I2C.
    I2C_send(0xD1);  // DS1307 en Modo Escritura.
    time->Segundo   = BCDToDecimal(I2C_read(1)); // ASK = 1
    time->Minuto    = BCDToDecimal(I2C_read(1));
    time->Hora      = BCDToDecimal(I2C_read(1));
    time->DiaSemana = BCDToDecimal(I2C_read(1));
    time->Dia       = BCDToDecimal(I2C_read(1));
    time->Mes       = BCDToDecimal(I2C_read(1));
    time->Ano       = BCDToDecimal(I2C_read(0)); // ASK = 0
                         // El DS1307 necesita que el �ltimo ASK antes del stop
                         // sea cero (/ASK). De otra manera se producen errores
                         // de lectura I2C.
    I2C_stop();
}

/****************************************************************************
  - Funci�n: DS1307_timeWrite
  - Descripci�n: Escribe fecha y hora en el DS1307 a trav�s del bus I2C.
  - Entrada: Ninguna.
  - Salida: Ninguna.
*****************************************************************************/
void DS1307_timeWrite(struct stime *time)
{
    I2C_start();     // Inicia comunicaci�n I2C
    I2C_send(0xD0);  // Direcci�n I2C del DS1307.
    I2C_send(0x00);  // Primera direcci�n a leer/escribir.
    I2C_send(decimalToBCD(time->Segundo));
    I2C_send(decimalToBCD(time->Minuto));
    I2C_send(decimalToBCD(time->Hora));
    I2C_send(decimalToBCD(time->DiaSemana));
    I2C_send(decimalToBCD(time->Dia));
    I2C_send(decimalToBCD(time->Mes));
    I2C_send(decimalToBCD(time->Ano));
    I2C_send(DS1307_CONF);
    I2C_stop();
}

#endif // __DS1307_LIB
