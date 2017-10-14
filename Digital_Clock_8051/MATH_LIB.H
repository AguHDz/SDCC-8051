//
// Librería de funciones matemáticas.
//
#ifndef __MATH_LIB
#define __MATH_LIB

/****************************************************************************
  - Función: BCDToDecimal
  - Descripción: Transforma un número en formato BCD a Decimal.
  - Variables Entrada:
      > dcdByte: Número en formato BCD
  - Variables Salida: Número en formato Decimal.
*****************************************************************************/
uint8_t BCDToDecimal(uint8_t bcdByte)
{
    uint8_t a,b,dec;
    a=(((bcdByte & 0xF0) >> 4) * 10);
    b=(bcdByte & 0x0F);
    dec=a+b;
    return dec;
}

/****************************************************************************
  - Función: decimalToBCD
  - Descripción: Transforma un número en formato Decimal a BCD.
  - Variables Entrada:
      > decimalByte: Número en formato Decimal
  - Variables Salida: Número en formato BCD.
*****************************************************************************/

uint8_t decimalToBCD (uint8_t decimalByte)
{
    uint8_t a,b,bcd;
    a=((decimalByte / 10) << 4);
    b= (decimalByte % 10);
    bcd=a|b;
    return bcd;
}

#endif // __MATH_LIB
