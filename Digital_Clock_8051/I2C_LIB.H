#ifndef __I2C_LIB_H
#define __I2C_LIB_H

void I2C_start(void)
{
    SDA=1;    //"start" function for communicate I2C
    SCL=1;
    SDA=0;
    SCL=0;
}

void I2C_stop(void)
{
    SDA=0;
    SCL=1;
    SDA=1;   //"stop" function for communicate I2C
}

unsigned char I2C_send(unsigned char Data)             //send data to I2C
{
    char i;
    char ack_bit;
    for(i=0; i<8; i++)
    {
        if(Data & 0x80) SDA=1;
        else SDA=0;
        SCL=1;
        Data<<=1;
        SCL=0;
    }
    SDA=1,SCL=1;
    ack_bit=SDA;
    SCL=0;
    return ack_bit;
}

unsigned char I2C_read(char ack)                      //receive data from I2C
{
    unsigned char i, Data=0;
    SDA=1;
    for(i=0; i<8; i++)
    {
        Data<<=1;
        do
        {
            SCL=1;
        }
        while(SCL==0);
        if(SDA) Data|=1;
        SCL=0;
    }
    if(ack)SDA=0;
    else SDA=1;
    SCL=1;
    SCL=0;
    SDA=1;
    return Data;
}

#endif  // __I2C_LIB_H
