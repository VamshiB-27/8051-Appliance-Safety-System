#include <AT89C513xA.h>
#include "main.h"
#include "mcu_config.h"
#include "my_oled.h"

volatile unsigned long int delay_time_ms = 0;
volatile unsigned short int time_ms = 0;


void main(void){

	EA = 0;
    	timer0_init();
    	EA=1;         /* Enable global interrupt */

	oled_init();
	oled_set_position(0, 0);
	oled_string("!OLED OK!");

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



