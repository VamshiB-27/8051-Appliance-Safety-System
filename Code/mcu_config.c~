#include <AT89C513xA.h>
#include "main.h"
#include "mcu_config.h"

void timer0_init(void){

        /* Timer 0 COnfig for 24Mhz fosc and ftimer0=2Mhz */
	TMOD = (TMOD & 0xF0) | 0x02;
	TH0=0x38;     /* auto reload value for 100us */
	TL0=0x38;     /* initize timer with start value */
	TF0 = 0; 
	ET0=1;        /* Enable timer interrupt */
	TR0=1;        /* Start Timer 0 */

}

void i2c_init(void){

	P4 |= 0x03;    /* make P4.0 and P4.1 high */
	/* for fscl=93.75khz cr2,cr1,cr0=000 then fscl=fosc/256 */
	/* SSCON cr2,ssie,sta,sto,si,aa,cr1,cr0 */
	SSCON=0x40;
}

unsigned char i2c_write(const unsigned char *data, unsigned char length){

	unsigned char i;
	unsigned int timeout;
	
	if(length == 0 || length > 32)
		return 0;
	
	if(i2c_busy)
	    	return 0;

	i2c_busy = 1;
	i2c_done = 0;
	i2c_error = 0;
	i2c_tx_index = 0;
	i2c_tx_length = length;
	
	for(i = 0; i < length; i++){
	    	i2c_tx_buffer[i] = data[i];
	}
	
	SSCON |= 0x40;
	SSCON |= 0x20;
	
	timeout = 0;
	
	while(!i2c_done && timeout < 60000U)
	    	timeout++;
	
	if(!i2c_done){
	
		 i2c_error = 0xFE;

		 SSCON &= ~0x40;
		 SSCON |= 0x10;
		 SSCON &= ~0x08;

		 timeout = 0;

		 while((SSCON & 0x10) && timeout < 60000U)
		     	timeout++;

		 SSCON &= ~0x08;
		 SSCON |= 0x40;

	}else if(SSCON & 0x10){

		timeout = 0;
		
		while((SSCON & 0x10) && timeout < 60000U)
			timeout++;

		if(SSCON & 0x10){
			i2c_error = 0xFE;
			SSCON &= ~0x40;
			SSCON &= ~0x08;
			SSCON |= 0x40;
		}
	}

	i2c_tx_length = 0;
	i2c_busy = 0;

	return (i2c_error == 0);
}

