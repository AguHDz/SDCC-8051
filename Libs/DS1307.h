//
// Librería manejo integrado Reloj de Tiempo Real (RTC) DS1307.
//

#ifndef __DS1307_LIB
#define __DS1307_LIB

#include <stdint.h>
#include "math.h"
#include "I2C.h"
#include "delay.h"


struct DS1307_sTime
{
    uint8_t  DiaSemana;     // Día de la semana (formato numérico 1..7)
    uint8_t  Dia;           // Día del mes.
    uint8_t  Mes;           // Mes del año.
    uint8_t  Ano;           // Año (solo dos dígitos)
    uint8_t  Hora;          // Hora del día.
    uint8_t  Minuto;        // Minuto de la hora.
    uint8_t  Segundo;       // Segundo del minuto.
};

#define DS1307_CONF 0x80     // La librería no lo usa, por eso se define como
                             // una constante. (Desactiva salida SQWE)

#ifdef DS1307_PARAMETROS    // Llamar a funciones DS1307 con parámetros.
                            // El programa ocupa más espacio.
/****************************************************************************
  - Función: DS1307_timeRead
  - Descripción: Lee fecha y hora del DS1307 a través del bus I2C.
  - Entrada:
      > *time: Puntero a estructura de datos tipo DS1307_sTime.
  - Salida: Ninguna.
*****************************************************************************/
void DS1307_timeRead(struct DS1307_sTime *time)
{
    I2C_start();      // Inicia comunicación I2C.
    I2C_writeByte(0xD0);  // Dirección I2C del DS1307.
    I2C_writeByte(0x00);  // Primera dirección a leer/escribir.
    I2C_reStart();    // Reinicia comunicación I2C.
    I2C_writeByte(0xD1);  // DS1307 en Modo Escritura.
    time->Segundo   = BCDToDecimal(I2C_readByte(1)); // ASK = 1
    time->Minuto    = BCDToDecimal(I2C_readByte(1));
    time->Hora      = BCDToDecimal(I2C_readByte(1));
    time->DiaSemana = I2C_readByte(1);  // Valor 1...7 (igual en decimal que en BCD)
    time->Dia       = BCDToDecimal(I2C_readByte(1));
    time->Mes       = BCDToDecimal(I2C_readByte(1));
    time->Ano       = BCDToDecimal(I2C_readByte(0)); // ASK = 0
                         // El DS1307 necesita que el último ASK antes del stop
                         // sea cero (/ASK). De otra manera se producen errores
                         // de lectura I2C.
    I2C_stop();
}

/****************************************************************************
  - Función: DS1307_timeWrite
  - Descripción: Escribe fecha y hora en el DS1307 a través del bus I2C.
  - Entrada:
      > *time: Puntero a estructura de datos tipo DS1307_sTime.
  - Salida: Ninguna.
*****************************************************************************/
void DS1307_timeWrite(struct DS1307_sTime *time)
{
    I2C_start();     // Inicia comunicación I2C
    I2C_writeByte(0xD0);  // Dirección I2C del DS1307.
    I2C_writeByte(0x00);  // Primera dirección a leer/escribir.
    I2C_writeByte(decimalToBCD(time->Segundo));
    I2C_writeByte(decimalToBCD(time->Minuto));
    I2C_writeByte(decimalToBCD(time->Hora));
    I2C_writeByte(time->DiaSemana);  // Valor 1...7 (igual en decimal que en BCD)
    I2C_writeByte(decimalToBCD(time->Dia));
    I2C_writeByte(decimalToBCD(time->Mes));
    I2C_writeByte(decimalToBCD(time->Ano));
    I2C_writeByte(DS1307_CONF);
    I2C_stop();
}

#else   // Llamar a las funciones DS1307 sin parámetros (valor global de variables)
        // El programa ocupa menos espacio.

struct DS1307_sTime DS1307_time;

/****************************************************************************
  - Función: DS1307_timeRead
  - Descripción: Lee fecha y hora del DS1307 a través del bus I2C.
  - Entrada: Ninguna.
  - Salida: Ninguna.
*****************************************************************************/
void DS1307_timeRead(void)
{
    I2C_start();     // Inicia comunicación I2C.
    I2C_writeByte(0xD0);  // Dirección I2C del DS1307.
    I2C_writeByte(0x00);  // Primera dirección a leer/escribir.
    I2C_start();     // Reinicia comunicación I2C.
    I2C_writeByte(0xD1);  // DS1307 en Modo Escritura.
    DS1307_time.Segundo   = BCDToDecimal(I2C_readByte(1)); // ASK = 1
    DS1307_time.Minuto    = BCDToDecimal(I2C_readByte(1));
    DS1307_time.Hora      = BCDToDecimal(I2C_readByte(1));
    DS1307_time.DiaSemana = I2C_readByte(1);  // Valor 1...7 (igual en decimal que en BCD)
    DS1307_time.Dia       = BCDToDecimal(I2C_readByte(1));
    DS1307_time.Mes       = BCDToDecimal(I2C_readByte(1));
    DS1307_time.Ano       = BCDToDecimal(I2C_readByte(0)); // ASK = 0
                         // El DS1307 necesita que el último ASK antes del stop
                         // sea cero (/ASK). De otra manera se producen errores
                         // de lectura I2C.
    I2C_stop();
}

/****************************************************************************
  - Función: DS1307_timeWrite
  - Descripción: Escribe fecha y hora en el DS1307 a través del bus I2C.
  - Entrada: Ninguna.
  - Salida: Ninguna.
*****************************************************************************/
void DS1307_timeWrite(void)
{
    I2C_start();     // Inicia comunicación I2C
    I2C_writeByte(0xD0);  // Dirección I2C del DS1307.
    I2C_writeByte(0x00);  // Primera dirección a leer/escribir.
    I2C_writeByte(decimalToBCD(DS1307_time.Segundo));
    I2C_writeByte(decimalToBCD(DS1307_time.Minuto));
    I2C_writeByte(decimalToBCD(DS1307_time.Hora));
    I2C_writeByte(DS1307_time.DiaSemana);  // Valor 1...7 (igual en decimal que en BCD)
    I2C_writeByte(decimalToBCD(DS1307_time.Dia));
    I2C_writeByte(decimalToBCD(DS1307_time.Mes));
    I2C_writeByte(decimalToBCD(DS1307_time.Ano));
//    I2C_writeByte(DS1307_CONF);
    I2C_stop();
}

/****************************************************************************
  - Función: DS1307_sout
  - Descripción: Escribe el byte de configuración del DS1307.
  - Entrada:
    > confSout: Byte de configuración a escribir.
  - Salida: Ninguna.
*****************************************************************************/
void DS1307_sout(uint8_t confSout)
{
    I2C_start();                 // Inicia comunicación I2C
    I2C_writeByte(0xD0);         // Dirección I2C del DS1307.
    I2C_writeByte(0x07);         // Escribe en la dirección 07h (configuración)
    I2C_writeByte(confSout);     // Escribe byte de configuración del DS1307.
    I2C_stop();
}

#endif // DS1307_PARAMETROS
#endif // __DS1307_LIB
