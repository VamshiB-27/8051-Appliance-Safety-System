#ifndef MY_UART_H
#define MY_UART_H

typedef unsigned char uart_u8;
typedef unsigned int uart_u16;
typedef unsigned long uart_u32;

#ifndef UART_FOSC_HZ
#define UART_FOSC_HZ 24000000UL
#endif

uart_u8 uart_init(uart_u32 baud);
void uart_write_byte(uart_u8 data);
void uart_write_buffer(const uart_u8 *data, uart_u16 length);
void uart_write_string(const char *str);
uart_u8 uart_available(void);
uart_u8 uart_read_byte(uart_u8 *data);
uart_u8 uart_read_byte_blocking(uart_u8 *data);

#endif