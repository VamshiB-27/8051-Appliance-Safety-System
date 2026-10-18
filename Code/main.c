#include <AT89C513xA.h>
#include "main.h"
#include "my_lcd.h"

void main(void){

	lcd_init();

	while(1){

	}
}

void delay(void){

	volatile unsigned int i, j;

	for(i=0;i<10;i++){
		for(j = 0; j < 120; j++){
			;
	        }
	}
}


