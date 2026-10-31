#include <AT89C513xA.h>
#include "main.h"
#include "mcu_config.h"
#include "my_oled.h"
#include "my_uart.h"

#define RELAY_PIN P2_6
#define BUZZER_PIN P2_7
#define RED_LED_PIN P2_1
#define GREEN_LED_PIN P2_0
#define RX_BUFFER_SIZE 32

volatile unsigned long int delay_time_ms = 0;

static unsigned char rx_buffer[RX_BUFFER_SIZE];
static unsigned char rx_length = 0;
static unsigned char relay_state = 0;
static unsigned char buzzer_state = 0;
static unsigned char parse_index = 0;

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
    }
}

static void oled_clear_region(unsigned char page,
                              unsigned char column,
                              unsigned char characters)
{
    unsigned char i;

    oled_set_position(page, column);

    for (i = 0; i < characters; i++)
        oled_char(' ');
}

static void oled_clear_error(void)
{
    oled_clear_region(5, 0, 21);
    oled_clear_region(7, 0, 21);
}

static unsigned char oled_print_field(unsigned char comma_expected)
{
    unsigned char count = 0;

    if (rx_buffer[parse_index] == '\0')
        return 0;

    while (rx_buffer[parse_index] != '\0' &&
           rx_buffer[parse_index] != ',')
    {
        if (count < 20)
            oled_char(rx_buffer[parse_index]);

        count++;
        parse_index++;
    }

    if (count == 0)
        return 0;

    if (comma_expected)
    {
        if (rx_buffer[parse_index] != ',')
            return 0;

        parse_index++;
    }

    return 1;
}

static void oled_initial_screen(void)
{
    oled_clear();

    oled_set_position(0, 0);
    oled_string("V:--");

    oled_set_position(0, 66);
    oled_string("F:--");

    oled_set_position(1, 0);
    oled_string("I:--");

    oled_set_position(1, 66);
    oled_string("E:--");

    oled_set_position(2, 0);
    oled_string("P:--");

    oled_set_position(2, 66);
    oled_string("L:--");

    oled_set_position(3, 0);
    oled_string("PF:--");

    oled_set_position(5, 0);
    oled_string("ERROR:");

    oled_set_position(7, 0);
    oled_string("NO ERROR");
}

static void process_data1(void)
{
    parse_index = 6;

    oled_clear_region(0, 0, 10);
    oled_set_position(0, 0);
    oled_string("V:");

    if (!oled_print_field(1))
        return;

    oled_clear_region(1, 0, 10);
    oled_set_position(1, 0);
    oled_string("I:");

    if (!oled_print_field(1))
        return;

    oled_char('A');

    oled_clear_region(2, 0, 10);
    oled_set_position(2, 0);
    oled_string("P:");

    if (!oled_print_field(1))
        return;

    oled_char('W');

    oled_clear_region(3, 0, 10);
    oled_set_position(3, 0);
    oled_string("PF:");

    oled_print_field(0);
}

static void process_data2(void)
{
    parse_index = 6;

    oled_clear_region(0, 66, 10);
    oled_set_position(0, 66);
    oled_string("F:");

    if (!oled_print_field(1))
        return;

    oled_string("Hz");

    oled_clear_region(1, 66, 10);
    oled_set_position(1, 66);
    oled_string("E:");

    if (!oled_print_field(1))
        return;

    oled_string("kWh");

    oled_clear_region(2, 66, 10);
    oled_set_position(2, 66);
    oled_string("L:");

    if (!oled_print_field(0))
        return;

    oled_char('A');
}

static void process_error(void)
{
    unsigned char i;

    parse_index = 6;

    oled_clear_error();

    oled_set_position(5, 0);
    oled_string("ERROR:");

    oled_set_position(7, 0);

    if (rx_buffer[parse_index] == 'N' &&
        rx_buffer[parse_index + 1] == 'O' &&
        rx_buffer[parse_index + 2] == 'N' &&
        rx_buffer[parse_index + 3] == 'E' &&
        rx_buffer[parse_index + 4] == '\0')
    {
        oled_string("NO ERROR");
        return;
    }

    if (rx_buffer[parse_index] == '\0')
    {
        oled_string("UNKNOWN ERROR");
        return;
    }

    for (i = 0; i < 21; i++)
    {
        if (rx_buffer[parse_index] == '\0')
            break;

        oled_char(rx_buffer[parse_index]);
        parse_index++;
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
            GREEN_LED_PIN = 1;
            RED_LED_PIN = 0;
            BUZZER_PIN = 0;
            buzzer_state = 1;

            uart_write_string("BUZZER,ON\r\n");
            return;
        }

        if (command[7] == 'O' &&
            command[8] == 'F' &&
            command[9] == 'F' &&
            command[10] == '\0')
        {
            RED_LED_PIN = 1;
            GREEN_LED_PIN = 0;
            BUZZER_PIN = 1;
            buzzer_state = 0;

            uart_write_string("BUZZER,OFF\r\n");
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

        return;
    }

    if (command[0] == 'D' &&
        command[1] == 'A' &&
        command[2] == 'T' &&
        command[3] == 'A' &&
        command[4] == '1' &&
        command[5] == ',')
    {
        process_data1();
        return;
    }

    if (command[0] == 'D' &&
        command[1] == 'A' &&
        command[2] == 'T' &&
        command[3] == 'A' &&
        command[4] == '2' &&
        command[5] == ',')
    {
        process_data2();
        return;
    }

    if (command[0] == 'E' &&
        command[1] == 'R' &&
        command[2] == 'R' &&
        command[3] == 'O' &&
        command[4] == 'R' &&
        command[5] == ',')
    {
        process_error();
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
    GREEN_LED_PIN = 0;

    relay_state = 0;
    buzzer_state = 0;

    timer0_init();

    EA = 1;

    oled_init();
    oled_initial_screen();

    uart_status = uart_init(9600);

    if (!uart_status)
    {
        oled_clear();
        oled_set_position(0, 0);
        oled_string("UART INIT FAILED");

        RELAY_PIN = 1;
        BUZZER_PIN = 1;

        while (1);
    }

    uart_write_string("UART READY\r\n");

    while (1)
    {
        uart_receive_process();
    }
}
