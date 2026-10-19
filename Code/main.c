#include <AT89C513xA.h>
#include "main.h"
#include "my_oled.h"
#include "mcu_config.h"
#include "my_lcd.h"

volatile unsigned long int delay_time_ms = 0;
volatile unsigned short int time_ms = 0;

volatile unsigned char i2c_tx_buffer[32];
volatile unsigned char i2c_tx_length = 0;
volatile unsigned char i2c_tx_index = 0;
volatile unsigned char i2c_error = 0;
volatile unsigned char i2c_busy = 0;
volatile unsigned char i2c_done = 0;

volatile unsigned char oled_status = 0;

void lcd_write_hex(unsigned char value)
{
    unsigned char digit;

    digit = (value >> 4) & 0x0F;
    if(digit < 10)
        letter_write('0' + digit);
    else
        letter_write('A' + digit - 10);

    digit = value & 0x0F;
    if(digit < 10)
        letter_write('0' + digit);
    else
        letter_write('A' + digit - 10);
}

void main(void){

	timer0_init();
	i2c_init();

	EA=1;         /* Enable global interrupt */

	delay_ms(100);

	lcd_init();

	oled_status = init_oled();

	cmd_write(0x80);
	letter_write('L');
	letter_write('C');
	letter_write('D');
	letter_write(' ');
	letter_write('O');
	letter_write('K');

	if(oled_status){
		oled_write_string("HELLO WORLD");
	}
	else{
		P1_7=0;
		delay_ms(1000);
		P1_7=1;
		delay_ms(1000);
		P1_7=0;
		delay_ms(1000);
		P1_7=1;
		delay_ms(1000);
		P1_7=0;

		cmd_write(0x80);
    letter_write('E');
    letter_write('R');
    letter_write('R');
    letter_write(':');
    lcd_write_hex(i2c_error);

    cmd_write(0xC0);
    letter_write('S');
    letter_write(':');
    lcd_write_hex(SSCS);

    cmd_write(0x94);
    letter_write('C');
    letter_write(':');
    lcd_write_hex(SSCON);
	}

	while(1){

	}
}

/* delay */
void delay_us(unsigned int value){

    /* It is software delay not accuraate */
    unsigned int i;
    while(value--){
        for(i=0;i<4;i++);   /* This is around 1us */
    }
}

void delay_ms(unsigned long int value){

	delay_time_ms=0;
	while(delay_time_ms<value);

}

/*  ISR  */

void timer0_isr(void) __interrupt(1){

	static int value=0;
	TF0=0;
	value++;
	if(value>=10){

		value=0;
		delay_time_ms++;
		time_ms++;

		if(time_ms>=1000){
        		time_ms=0;
        	}
	}
}

void i2c_isr(void) __interrupt(9){

	unsigned char status;

	/* SSCS status reg sc4:sc0(5-bit status) and lsb 3 bits are unused */
	status=SSCS&0xf8;

	switch(status){

		case 0x08: /* Start transmitted */
		case 0x10: /* */
		 	SSDAT=0x78;
		 	break;

		case 0x18: /* Address transmitted,ack received */
			if(i2c_tx_length>0){
				SSDAT=i2c_tx_buffer[0];
				i2c_tx_index=1;
			}else{
				i2c_error=0xFD;
				SSCON |= 0x10; /* Request stop bit */
				i2c_done=1;
			}
			break;

		case 0x28: /* Data transmitted,ACK received */
			if(i2c_tx_index<i2c_tx_length){
				SSDAT=i2c_tx_buffer[i2c_tx_index];
				i2c_tx_index++;
			}else{
				SSCON |= 0x10; /* Request stop bit */
				i2c_done=1;
			}
			break;

		case 0x20: /* Address not acknowledged */
		case 0x30: /* Data byte not acknowledged */
			i2c_error=status;
			SSCON |= 0x10; /* Request stop bit */
            		i2c_done = 1;
			break;

		case 0x38:
			i2c_error=status;
            		i2c_done = 1;
			break;
			
		case 0x00:
		default:
			i2c_error=status;
			SSCON |= 0x10; /* Request stop bit */
            		i2c_done = 1;
			break;
	}

	SSCON &= ~0x08; /* Clear interrupt flag */

}







