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


