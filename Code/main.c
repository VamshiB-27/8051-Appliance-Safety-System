
#include <AT89C513xA.h>
#include "main.h"
#include "mcu_config.h"
#include "my_oled.h"
#include "my_uart.h"

volatile unsigned long int delay_time_ms = 0;
volatile unsigned short int time_ms = 0;

#define DISPLAY_LENGTH 20

void oled_show_message(char *label, unsigned char *data, unsigned char length)
{
    unsigned char i;

    oled_set_position(0, 0);
    oled_string("                    ");
    oled_set_position(0, 0);
    oled_string(label);

    oled_set_position(3, 0);

    for (i = 0; i < DISPLAY_LENGTH; i++)
        oled_char(' ');

    oled_set_position(3, 0);

    for (i = 0; i < length && i < DISPLAY_LENGTH; i++)
        oled_char(data[i]);
}

void main(void)
{
    uart_u8 rx_data;
    uart_u8 uart_status;
    unsigned char rx_buffer[DISPLAY_LENGTH];
    unsigned char rx_length = 0;
    unsigned char tx_buffer[] = "UART TX TEST";

    EA = 0;
    timer0_init();
    EA = 1;

    oled_init();
    oled_clear();

    oled_set_position(0, 0);
    oled_string("UART RX TX TEST");

    uart_status = uart_init(9600);

    if (!uart_status)
    {
        oled_set_position(2, 0);
        oled_string("UART INIT FAIL");

        while (1);
    }

    uart_write_string("UART TX TEST\r\n");

    oled_show_message("TX: SENT", tx_buffer, 12);
    delay_ms(1000);

    oled_set_position(0, 0);
    oled_string("                    ");
    oled_set_position(0, 0);
    oled_string("WAITING RX");

    while (1)
    {
        if (uart_read_byte(&rx_data))
        {
            if (rx_data == '\r' || rx_data == '\n')
            {
                if (rx_length > 0)
                {
                    uart_write_buffer(rx_buffer, rx_length);
                    uart_write_string("\r\n");

                    oled_show_message("RX: RECEIVED", rx_buffer, rx_length);

                    rx_length = 0;
                }
            }
            else
            {
                if (rx_length < DISPLAY_LENGTH)
                {
                    rx_buffer[rx_length++] = rx_data;
                }
            }
        }
    }
}

void delay_us(unsigned int value)
{
    unsigned int i;

    while (value--)
    {
        for (i = 0; i < 4; i++);
    }
}

void delay_ms(unsigned long int value)
{
    delay_time_ms = 0;

    while (delay_time_ms < value);
}

void timer0_isr(void) __interrupt(1)
{
    static int value = 0;

    TF0 = 0;
    value++;

    if (value >= 10)
    {
        value = 0;
        delay_time_ms++;
        time_ms++;

        if (time_ms >= 1000)
            time_ms = 0;
    }
}
