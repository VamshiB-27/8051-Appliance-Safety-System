#include <AT89C513xA.h>
#include "main.h"
#include "mcu_config.h"
#include "my_oled.h"
#include "my_uart.h"

#define RELAY_PIN P2_6
#define BUZZER_PIN P2_7
#define RED_LED_PIN P2_1
#define GREEN_LED_PIN P2_0
#define RELAY_BUTTON_PIN P2_2

#define RX_BUFFER_SIZE 32
#define BUTTON_DEBOUNCE_MS 25

volatile unsigned long int delay_time_ms = 0;

static unsigned char rx_buffer[RX_BUFFER_SIZE];
static unsigned char rx_length = 0;
static unsigned char relay_state = 0;
static unsigned char buzzer_state = 0;
static unsigned char fault_active = 0;
static unsigned char parse_index = 0;

static unsigned char button_last_sample = 1;
static unsigned char button_stable_state = 1;
static unsigned long int button_last_change_time = 0;

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

static unsigned long int get_millis(void)
{
    unsigned long int value;

    EA = 0;
    value = delay_time_ms;
    EA = 1;

    return value;
}

static void relay_set(unsigned char state)
{
    if (state)
    {
        RELAY_PIN = 0;
        relay_state = 1;
    }
    else
    {
        RELAY_PIN = 1;
        relay_state = 0;
    }
}

static void buzzer_set(unsigned char state)
{
    if (state)
    {
        GREEN_LED_PIN = 1;
        RED_LED_PIN = 0;
        BUZZER_PIN = 0;
        buzzer_state = 1;
    }
    else
    {
        RED_LED_PIN = 1;
        GREEN_LED_PIN = 0;
        BUZZER_PIN = 1;
        buzzer_state = 0;
    }
}

static void relay_button_process(void)
{
    unsigned char sample;
    unsigned long int now;

    sample = RELAY_BUTTON_PIN;
    now = get_millis();

    if (sample != button_last_sample)
    {
        button_last_sample = sample;
        button_last_change_time = now;
    }

    if ((now - button_last_change_time) >= BUTTON_DEBOUNCE_MS)
    {
        if (button_stable_state != button_last_sample)
        {
            button_stable_state = button_last_sample;

            if (button_stable_state == 0)
            {
                if (relay_state)
                {
                    relay_set(0);
                }
                else
                {
                    if (!fault_active)
                    {
                        relay_set(1);
                    }
                }
            }
        }
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
    else
    {
        if (rx_buffer[parse_index] != '\0')
            return 0;
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

    oled_set_position(3, 66);
    oled_string("T:--C");

    oled_set_position(5, 0);
    oled_string("ERROR:");

    oled_set_position(7, 0);
    oled_string("NO ERROR");
}

static unsigned char process_data1(void)
{
    parse_index = 6;

    oled_clear_region(0, 0, 10);
    oled_set_position(0, 0);
    oled_string("V:");

    if (!oled_print_field(1))
        return 0;

    oled_clear_region(1, 0, 10);
    oled_set_position(1, 0);
    oled_string("I:");

    if (!oled_print_field(1))
        return 0;

    oled_char('A');

    oled_clear_region(2, 0, 10);
    oled_set_position(2, 0);
    oled_string("P:");

    if (!oled_print_field(1))
        return 0;

    oled_char('W');

    oled_clear_region(3, 0, 10);
    oled_set_position(3, 0);
    oled_string("PF:");

    if (!oled_print_field(0))
        return 0;

    return 1;
}

static unsigned char process_data2(void)
{
    parse_index = 6;

    oled_clear_region(0, 66, 10);
    oled_set_position(0, 66);
    oled_string("F:");

    if (!oled_print_field(1))
        return 0;

    oled_string("Hz");

    oled_clear_region(1, 66, 10);
    oled_set_position(1, 66);
    oled_string("E:");

    if (!oled_print_field(1))
        return 0;

    oled_string("kWh");

    oled_clear_region(2, 66, 10);
    oled_set_position(2, 66);
    oled_string("L:");

    if (!oled_print_field(0))
        return 0;

    oled_char('A');

    return 1;
}

static unsigned char process_data3(void)
{
    parse_index = 6;

    oled_clear_region(3, 66, 10);
    oled_set_position(3, 66);
    oled_string("T:");

    if (!oled_print_field(0))
        return 0;

    oled_char('C');

    return 1;
}

static unsigned char process_error(void)
{
    unsigned char i;
    unsigned char is_none = 0;

    parse_index = 6;

    if (rx_buffer[parse_index] == '\0')
        return 0;

    if (rx_buffer[parse_index] == 'N' &&
        rx_buffer[parse_index + 1] == 'O' &&
        rx_buffer[parse_index + 2] == 'N' &&
        rx_buffer[parse_index + 3] == 'E' &&
        rx_buffer[parse_index + 4] == '\0')
    {
        is_none = 1;
    }

    if (is_none)
    {
        fault_active = 0;
        oled_clear_error();

        oled_set_position(5, 0);
        oled_string("ERROR:");

        oled_set_position(7, 0);
        oled_string("NO ERROR");

        return 1;
    }

    fault_active = 1;
    relay_set(0);

    oled_clear_error();

    oled_set_position(5, 0);
    oled_string("ERROR:");

    oled_set_position(7, 0);

    for (i = 0; i < 21; i++)
    {
        if (rx_buffer[parse_index] == '\0')
            break;

        oled_char(rx_buffer[parse_index]);
        parse_index++;
    }

    return 1;
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
            if (!fault_active)
            {
                relay_set(1);
            }
            else
            {
                relay_set(0);
            }

            uart_write_string(
                relay_state ? "RELAY,ON\r\n" : "RELAY,OFF\r\n"
            );

            return;
        }

        if (command[6] == 'O' &&
            command[7] == 'F' &&
            command[8] == 'F' &&
            command[9] == '\0')
        {
            relay_set(0);

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
            buzzer_set(1);

            uart_write_string("BUZZER,ON\r\n");
            return;
        }

        if (command[7] == 'O' &&
            command[8] == 'F' &&
            command[9] == 'F' &&
            command[10] == '\0')
        {
            buzzer_set(0);

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
        if (process_data1())
            uart_write_string("ACK,DATA1\r\n");

        return;
    }

    if (command[0] == 'D' &&
        command[1] == 'A' &&
        command[2] == 'T' &&
        command[3] == 'A' &&
        command[4] == '2' &&
        command[5] == ',')
    {
        if (process_data2())
            uart_write_string("ACK,DATA2\r\n");

        return;
    }

    if (command[0] == 'D' &&
        command[1] == 'A' &&
        command[2] == 'T' &&
        command[3] == 'A' &&
        command[4] == '3' &&
        command[5] == ',')
    {
        if (process_data3())
            uart_write_string("ACK,DATA3\r\n");

        return;
    }

    if (command[0] == 'E' &&
        command[1] == 'R' &&
        command[2] == 'R' &&
        command[3] == 'O' &&
        command[4] == 'R' &&
        command[5] == ',')
    {
        if (process_error())
            uart_write_string("ACK,ERROR\r\n");

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
    RED_LED_PIN = 1;
    GREEN_LED_PIN = 0;

    RELAY_BUTTON_PIN = 1;

    relay_state = 0;
    buzzer_state = 0;
    fault_active = 0;

    button_last_sample = 1;
    button_stable_state = 1;

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

        relay_set(0);
        buzzer_set(0);

        while (1)
        {
            relay_button_process();
            uart_receive_process();
        }
    }

    uart_write_string("UART READY\r\n");

    while (1)
    {
        relay_button_process();
        uart_receive_process();
    }
}