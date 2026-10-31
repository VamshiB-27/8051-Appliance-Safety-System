#include <AT89C513xA.h>
#include "main.h"
#include "mcu_config.h"
#include "my_oled.h"
#include "my_uart.h"

#define RELAY_PIN P2_6
#define BUZZER_PIN P2_7

#define RX_BUFFER_SIZE 64

volatile unsigned long int delay_time_ms = 0;
volatile unsigned short int time_ms = 0;

static unsigned char rx_buffer[RX_BUFFER_SIZE];
static unsigned char rx_length = 0;
static unsigned char relay_state = 0;
static unsigned char buzzer_state = 0;

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
    static unsigned char count = 0;

    TF0 = 0;
    count++;

    if (count >= 10)
    {
        count = 0;
        delay_time_ms++;
        time_ms++;

        if (time_ms >= 1000)
            time_ms = 0;
    }
}

static void oled_clear_line(unsigned char page)
{
    unsigned char i;

    oled_set_position(page, 0);

    for (i = 0; i < 20; i++)
        oled_char(' ');
}

static void oled_show_status(void)
{
    oled_clear_line(0);
    oled_set_position(0, 0);
    oled_string("APPLIANCE SAFETY");

    oled_clear_line(2);
    oled_set_position(2, 0);
    oled_string("RELAY: ");

    oled_string(relay_state ? "ON" : "OFF");

    oled_clear_line(4);
    oled_set_position(4, 0);
    oled_string("BUZZER: ");

    oled_string(buzzer_state ? "ON" : "OFF");

    oled_clear_line(6);
    oled_set_position(6, 0);
    oled_string("SYSTEM READY");
}

static void oled_show_data(char *data)
{
    unsigned char i;
    unsigned char row = 0;
    unsigned char column = 0;

    oled_clear();

    oled_set_position(0, 0);
    oled_string("LIVE MEASUREMENTS");

    for (i = 0; data[i] != '\0' && row < 3; i++)
    {
        if (data[i] == ',')
        {
            row++;
            column = 0;

            oled_set_position(row * 2, 0);
        }
        else
        {
            if (column < 20)
            {
                oled_char(data[i]);
                column++;
            }
        }
    }
}

static void process_command(char *command)
{
    if (command[0] == 'R' &&
        command[1] == 'E' &&
        command[2] == 'L' &&
        command[3] == 'A' &&
        command[4] == 'Y' &&
        command[5] == ',')
    {
        if (command[6] == 'O' &&
            command[7] == 'N' &&
            command[8] == '\0')
        {
            RELAY_PIN = 0;
            relay_state = 1;

            uart_write_string("RELAY,ON\r\n");
            oled_show_status();

            return;
        }

        if (command[6] == 'O' &&
            command[7] == 'F' &&
            command[8] == 'F' &&
            command[9] == '\0')
        {
            RELAY_PIN = 1;
            relay_state = 0;

            uart_write_string("RELAY,OFF\r\n");
            oled_show_status();

            return;
        }
    }

    if (command[0] == 'B' &&
        command[1] == 'U' &&
        command[2] == 'Z' &&
        command[3] == 'Z' &&
        command[4] == 'E' &&
        command[5] == 'R' &&
        command[6] == ',')
    {
        if (command[7] == 'O' &&
            command[8] == 'N' &&
            command[9] == '\0')
        {
            BUZZER_PIN = 0;
            buzzer_state = 1;

            uart_write_string("BUZZER,ON\r\n");
            oled_show_status();

            return;
        }

        if (command[7] == 'O' &&
            command[8] == 'F' &&
            command[9] == 'F' &&
            command[10] == '\0')
        {
            BUZZER_PIN = 1;
            buzzer_state = 0;

            uart_write_string("BUZZER,OFF\r\n");
            oled_show_status();

            return;
        }
    }

    if (command[0] == 'S' &&
        command[1] == 'T' &&
        command[2] == 'A' &&
        command[3] == 'T' &&
        command[4] == 'U' &&
        command[5] == 'S' &&
        command[6] == '\0')
    {
        uart_write_string("STATUS,RELAY=");
        uart_write_string(relay_state ? "ON" : "OFF");
        uart_write_string(",BUZZER=");
        uart_write_string(buzzer_state ? "ON" : "OFF");
        uart_write_string("\r\n");

        oled_show_status();

        return;
    }

    if (command[0] == 'H' &&
        command[1] == 'E' &&
        command[2] == 'L' &&
        command[3] == 'P' &&
        command[4] == '\0')
    {
        uart_write_string("RELAY,ON\r\n");
        uart_write_string("RELAY,OFF\r\n");
        uart_write_string("BUZZER,ON\r\n");
        uart_write_string("BUZZER,OFF\r\n");
        uart_write_string("STATUS\r\n");

        return;
    }

    if (command[0] == 'D' &&
        command[1] == 'A' &&
        command[2] == 'T' &&
        command[3] == 'A' &&
        command[4] == ',')
    {
        oled_show_data(command);

        return;
    }

    if (command[0] == 'L' &&
        command[1] >= '0' &&
        command[1] <= '3' &&
        command[2] == ':')
    {
        unsigned char page = (command[1] - '0') * 2;

        oled_clear_line(page);
        oled_set_position(page, 0);
        oled_string(command + 3);

        return;
    }
}

static void uart_receive_process(void)
{
    uart_u8 data;

    if (!uart_read_byte(&data))
        return;

    if (data == '\r' || data == '\n')
    {
        if (rx_length > 0)
        {
            rx_buffer[rx_length] = '\0';

            process_command((char *)rx_buffer);

            rx_length = 0;
        }

        return;
    }

    if (data == 8 || data == 127)
    {
        if (rx_length > 0)
            rx_length--;

        return;
    }

    if (rx_length < RX_BUFFER_SIZE - 1)
    {
        rx_buffer[rx_length++] = data;
    }
    else
    {
        rx_length = 0;
    }
}

void main(void)
{
    uart_u8 uart_status;

    EA = 0;

    RELAY_PIN = 1;
    BUZZER_PIN = 1;

    relay_state = 0;
    buzzer_state = 0;

    timer0_init();

    EA = 1;

    oled_init();
    oled_clear();

    uart_status = uart_init(9600);

    if (!uart_status)
    {
        oled_set_position(0, 0);
        oled_string("UART INIT FAILED");

        RELAY_PIN = 1;
        BUZZER_PIN = 1;

        while (1);
    }

    oled_show_status();

    uart_write_string("APPLIANCE SAFETY V0.1\r\n");
    uart_write_string("UART READY\r\n");

    while (1)
    {
        uart_receive_process();
    }
}
