#include <AT89C513xA.h>
#include "main.h"
#include "my_oled.h"

#define OLED_SCL P4_0
#define OLED_SDA P4_1
#define OLED_ADDR 0x78

static unsigned char oled_page = 0;
static unsigned char oled_column = 0;

static const unsigned char font5x7[36][5] = {
    {0x7E,0x11,0x11,0x11,0x7E},
    {0x7F,0x49,0x49,0x49,0x36},
    {0x3E,0x41,0x41,0x41,0x22},
    {0x7F,0x41,0x41,0x22,0x1C},
    {0x7F,0x49,0x49,0x49,0x41},
    {0x7F,0x09,0x09,0x09,0x01},
    {0x3E,0x41,0x49,0x49,0x7A},
    {0x7F,0x08,0x08,0x08,0x7F},
    {0x00,0x41,0x7F,0x41,0x00},
    {0x20,0x40,0x41,0x3F,0x01},
    {0x7F,0x08,0x14,0x22,0x41},
    {0x7F,0x40,0x40,0x40,0x40},
    {0x7F,0x02,0x0C,0x02,0x7F},
    {0x7F,0x04,0x08,0x10,0x7F},
    {0x3E,0x41,0x41,0x41,0x3E},
    {0x7F,0x09,0x09,0x09,0x06},
    {0x3E,0x41,0x51,0x21,0x5E},
    {0x7F,0x09,0x19,0x29,0x46},
    {0x26,0x49,0x49,0x49,0x32},
    {0x01,0x01,0x7F,0x01,0x01},
    {0x3F,0x40,0x40,0x40,0x3F},
    {0x1F,0x20,0x40,0x20,0x1F},
    {0x3F,0x40,0x38,0x40,0x3F},
    {0x63,0x14,0x08,0x14,0x63},
    {0x07,0x08,0x70,0x08,0x07},
    {0x61,0x51,0x49,0x45,0x43},
    {0x3E,0x45,0x49,0x51,0x3E},
    {0x00,0x21,0x7F,0x01,0x00},
    {0x23,0x45,0x49,0x51,0x21},
    {0x42,0x41,0x51,0x69,0x46},
    {0x0C,0x14,0x24,0x7F,0x04},
    {0x72,0x51,0x51,0x51,0x4E},
    {0x1E,0x29,0x49,0x49,0x06},
    {0x40,0x47,0x48,0x50,0x60},
    {0x36,0x49,0x49,0x49,0x36},
    {0x30,0x49,0x49,0x4A,0x3C}
};

static void i2c_delay(void)
{
    delay_us(5);
}

void i2c_start(void)
{
    OLED_SDA = 1;
    OLED_SCL = 1;
    i2c_delay();
    OLED_SDA = 0;
    i2c_delay();
    OLED_SCL = 0;
}

void i2c_stop(void)
{
    OLED_SDA = 0;
    OLED_SCL = 1;
    i2c_delay();
    OLED_SDA = 1;
    i2c_delay();
}

unsigned char i2c_write(unsigned char dat)
{
    unsigned char i;
    unsigned char ack;

    for(i = 0; i < 8; i++)
    {
        OLED_SDA = (dat & 0x80) ? 1 : 0;
        i2c_delay();
        OLED_SCL = 1;
        i2c_delay();
        OLED_SCL = 0;
        dat <<= 1;
    }

    OLED_SDA = 1;
    i2c_delay();
    OLED_SCL = 1;
    i2c_delay();
    ack = OLED_SDA;
    OLED_SCL = 0;
    i2c_delay();

    return (ack == 0);
}

static unsigned char i2c_write_transaction(
    unsigned char control,
    const unsigned char *data,
    unsigned char length)
{
    unsigned char i;
    unsigned char success = 1;

    i2c_start();

    if(!i2c_write(OLED_ADDR))
        success = 0;

    if(success && !i2c_write(control))
        success = 0;

    for(i = 0; i < length && success; i++)
    {
        if(!i2c_write(data[i]))
            success = 0;
    }

    i2c_stop();
    return success;
}

void oled_command(unsigned char cmd)
{
    i2c_write_transaction(0x00, &cmd, 1);
}

void oled_data(unsigned char dat)
{
    i2c_write_transaction(0x40, &dat, 1);
}

void oled_set_position(unsigned char page, unsigned char column)
{
    if(page > 7)
        page = 7;

    if(column > 127)
        column = 127;

    oled_page = page;
    oled_column = column;

    oled_command(0xB0 | page);
    oled_command(column & 0x0F);
    oled_command(0x10 | (column >> 4));
}

void oled_clear(void)
{
    unsigned char page;
    unsigned char col;
    unsigned char i;
    unsigned char zeros[16];

    for(i = 0; i < 16; i++)
        zeros[i] = 0x00;

    for(page = 0; page < 8; page++)
    {
        oled_set_position(page, 0);

        for(col = 0; col < 128; col += 16)
            i2c_write_transaction(0x40, zeros, 16);
    }

    oled_set_position(0, 0);
}

void oled_init(void)
{
    delay_ms(100);

    OLED_SCL = 1;
    OLED_SDA = 1;

    oled_command(0xAE);
    oled_command(0xD5);
    oled_command(0x80);
    oled_command(0xA8);
    oled_command(0x3F);
    oled_command(0xD3);
    oled_command(0x00);
    oled_command(0x40);
    oled_command(0x8D);
    oled_command(0x14);
    oled_command(0x20);
    oled_command(0x02);
    oled_command(0xA1);
    oled_command(0xC8);
    oled_command(0xDA);
    oled_command(0x12);
    oled_command(0x81);
    oled_command(0x7F);
    oled_command(0xD9);
    oled_command(0xF1);
    oled_command(0xDB);
    oled_command(0x40);
    oled_command(0xA4);
    oled_command(0xA6);

    oled_clear();
    oled_command(0xAF);
    oled_set_position(0, 0);
}

void oled_char(unsigned char c)
{
    unsigned char i;
    unsigned char index;
    unsigned char data[6];

    if(c >= 'a' && c <= 'z')
        c -= ('a' - 'A');

    for(i = 0; i < 6; i++)
        data[i] = 0x00;

    if(c >= 'A' && c <= 'Z')
    {
        index = c - 'A';

        for(i = 0; i < 5; i++)
            data[i] = font5x7[index][i];
    }
    else if(c >= '0' && c <= '9')
    {
        index = 26 + c - '0';

        for(i = 0; i < 5; i++)
            data[i] = font5x7[index][i];
    }
    else
    {
        switch(c)
        {
            case '.':
                data[2] = 0x60;
                break;

            case ',':
                data[2] = 0x60;
                data[3] = 0x40;
                break;

            case ':':
                data[2] = 0x36;
                break;

            case ';':
                data[2] = 0x36;
                data[3] = 0x40;
                break;

            case '-':
                data[0] = 0x08;
                data[1] = 0x08;
                data[2] = 0x08;
                data[3] = 0x08;
                data[4] = 0x08;
                break;

            case '_':
                data[0] = 0x40;
                data[1] = 0x40;
                data[2] = 0x40;
                data[3] = 0x40;
                data[4] = 0x40;
                break;

            case '!':
                data[2] = 0x5F;
                break;

            case '?':
                data[0] = 0x02;
                data[1] = 0x01;
                data[2] = 0x51;
                data[3] = 0x09;
                data[4] = 0x06;
                break;

            case '/':
                data[0] = 0x20;
                data[1] = 0x10;
                data[2] = 0x08;
                data[3] = 0x04;
                data[4] = 0x02;
                break;

            case '\\':
                data[0] = 0x02;
                data[1] = 0x04;
                data[2] = 0x08;
                data[3] = 0x10;
                data[4] = 0x20;
                break;

            case '+':
                data[1] = 0x08;
                data[2] = 0x1C;
                data[3] = 0x08;
                break;

            case '=':
                data[1] = 0x14;
                data[2] = 0x14;
                data[3] = 0x14;
                break;

            case '(':
                data[1] = 0x1C;
                data[2] = 0x22;
                data[3] = 0x41;
                break;

            case ')':
                data[1] = 0x41;
                data[2] = 0x22;
                data[3] = 0x1C;
                break;

            case '%':
                data[0] = 0x23;
                data[1] = 0x13;
                data[2] = 0x08;
                data[3] = 0x64;
                data[4] = 0x62;
                break;

            case '\'':
                data[2] = 0x07;
                break;

            case 0x22:     /* for char ' " ' */
    		data[1] = 0x03;
    		data[3] = 0x03;
    		break;

            case '*':
                data[1] = 0x14;
                data[2] = 0x08;
                data[3] = 0x14;
                break;

            case '#':
                data[0] = 0x14;
                data[1] = 0x7F;
                data[2] = 0x14;
                data[3] = 0x7F;
                data[4] = 0x14;
                break;

            case '<':
                data[0] = 0x08;
                data[1] = 0x14;
                data[2] = 0x22;
                data[3] = 0x41;
                break;

            case '>':
                data[0] = 0x41;
                data[1] = 0x22;
                data[2] = 0x14;
                data[3] = 0x08;
                break;

            case '|':
                data[2] = 0x7F;
                break;

            case '[':
                data[1] = 0x7F;
                data[2] = 0x41;
                break;

            case ']':
                data[2] = 0x41;
                data[3] = 0x7F;
                break;

            case '{':
                data[1] = 0x08;
                data[2] = 0x36;
                data[3] = 0x41;
                break;

            case '}':
                data[1] = 0x41;
                data[2] = 0x36;
                data[3] = 0x08;
                break;

            case '~':
                data[0] = 0x08;
                data[1] = 0x04;
                data[2] = 0x08;
                data[3] = 0x10;
                data[4] = 0x08;
                break;

            case ' ':
            default:
                break;
        }
    }

    if((unsigned int)oled_column + 6 > 128)
    {
        oled_page++;
        oled_column = 0;

        if(oled_page > 7)
            oled_page = 0;

        oled_set_position(oled_page, oled_column);
    }

    i2c_write_transaction(0x40, data, 6);
    oled_column += 6;

    if(oled_column >= 128)
    {
        oled_column = 0;
        oled_page++;

        if(oled_page > 7)
            oled_page = 0;

        oled_set_position(oled_page, oled_column);
    }
}

void oled_string(char *str)
{
    while(*str)
    {
        if(*str == '\n')
        {
            oled_page++;

            if(oled_page > 7)
                oled_page = 0;

            oled_column = 0;
            oled_set_position(oled_page, oled_column);
            str++;
        }
        else if(*str == '\r')
        {
            oled_column = 0;
            oled_set_position(oled_page, oled_column);
            str++;
        }
        else
        {
            oled_char((unsigned char)*str++);
        }
    }
}
