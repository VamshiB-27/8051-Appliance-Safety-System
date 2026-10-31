
#include <AT89C513xA.h>
#include "my_uart.h"

uart_u8 uart_init(uart_u32 baud)
{
    uart_u32 divisor;
    uart_u8 reload;

    if (baud == 0)
        return 0;

    divisor = (UART_FOSC_HZ + (96UL * baud))
              / (192UL * baud);

    if (divisor == 0 || divisor > 255UL)
        return 0;

    reload = (uart_u8)(256UL - divisor);

    ES = 0;

    TR1 = 0;
    TMOD = (TMOD & 0x0F) | 0x20;

    PCON |= 0x80;

    TH1 = reload;
    TL1 = reload;

    SCON = 0x50;

    TI = 0;
    RI = 0;

    TR1 = 1;

    return 1;
}

void uart_write_byte(uart_u8 data)
{
    SBUF = data;

    while (TI == 0);

    TI = 0;
}

void uart_write_buffer(const uart_u8 *data, uart_u16 length)
{
    uart_u16 i;

    for (i = 0; i < length; i++)
        uart_write_byte(data[i]);
}

void uart_write_string(const char *str)
{
    while (*str != '\0')
    {
        uart_write_byte((uart_u8)*str);
        str++;
    }
}

uart_u8 uart_available(void)
{
    return RI ? 1 : 0;
}

uart_u8 uart_read_byte(uart_u8 *data)
{
    if (RI == 0)
        return 0;

    *data = SBUF;
    RI = 0;

    return 1;
}

uart_u8 uart_read_byte_blocking(uart_u8 *data)
{
    while (RI == 0);

    *data = SBUF;
    RI = 0;

    return 1;
}
