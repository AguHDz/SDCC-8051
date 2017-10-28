/***************************************************************************************************************
    This file is part of Library for 8051.

    Library for 8051 is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Library for 8051 is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Library for 8051.  If not, see <http://www.gnu.org/licenses/>.
/**************************************************************************************************************/



/***
**   File       : i2c.h
**   Author     : Sriharsha
**   Website    : www.zuna.in
**   Email      : helpzuna@gmail.com
**   Description: This is the i2c include file for 8051 family MCU's
***/
#ifndef __i2c_h__
#define __i2c_h__


#ifndef SDCC
#define SDCC 0
#endif
#ifndef KEIL
#define KEIL 1
#endif

#ifndef TOOLCHAIN
#define TOOLCHAIN SDCC
#endif

#if TOOLCHAIN   == SDCC
#include <8051.h>             // 8051 Peripheral Address preprocessor file
#elif TOOLCHAIN == KEIL
#include <reg51.h>
#else
#error "Invalid Toolchain, Please check 'TOOLCHAIN' macro (SDCC/KEIL)"
#endif

// Port Definitions
#define SDADIR  P0             // SDA Direction Register
#define SCLDIR  P0             // SCL Direction Register

#define SDAPORT P0             // SDA Output Register
#define SCLPORT P0             // SCL Output Register

#define SDAPIN  P0             // SDA Input Register
#define SCLPIN  P0             // SCL Input Register

#define SDABIT 1 << 0         // SDA Bit Position
#define SCLBIT 1 << 1         // SCL Bit Position

#define SDA ( (SDAPIN ) & (SDABIT) ) // SDA
#define SCL ( (SCLPIN ) & (SCLBIT) ) // SCL


#define SDA_HIGH SDAPORT |= SDABIT
#define SDA_LOW  SDAPORT &= ~SDABIT

#define SCL_HIGH SCLPORT |= SCLBIT
#define SCL_LOW  SCLPORT &= ~SCLBIT

#define I2C_CLOCK_VAR                    100
#define I2C_SCAN_TIMEOUT_COUNTER_VAL     50000

#define i2cClock(val) i2cDelay(val)

#define CLOCK_ERROR_CORRECTION 3

/***************** Prototypes ******************************/
extern unsigned char  i2cBegin(unsigned long,unsigned long);          // Osc Freq, Speed
extern unsigned char  i2cDetect(unsigned char);                       // Device Address
extern unsigned char  i2cavailable(void);

extern void           i2cStart(void);
extern void           i2cStop(void);

extern void           i2cWritebyte(unsigned char);
extern unsigned char  i2cReadbyte(unsigned char);

extern void           i2cWrite(unsigned char,unsigned char);
extern unsigned char  i2cRead(unsigned char);

extern void           i2cWriteBlock(unsigned char,unsigned char,unsigned char*);
extern void           i2cReadBlock(unsigned char,unsigned char,unsigned char*);

extern void           i2csetAdd(unsigned char);
extern unsigned char* i2cScan(unsigned char ,unsigned char);
/***********************************************************/

#endif
