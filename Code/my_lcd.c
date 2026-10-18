#include <AT89C513xA.h>
#include "my_lcd.h"
#include "main.h"

void lcd_init(void){

	delay();
	cmd_write(0x38); /* 8-bit mode, 2 lines */
	cmd_write(0x0C); /* Display ON, Cursor off */
	cmd_write(0x01); /* Clear Display */
	cmd_write(0x06); /* Auto Increment Cursor after Writing*/

}

void cmd_write(char cmd){

	RS=0; /* Cmd Register */
	RW=0; /* Write */
	DATA=cmd;
	EN=1;
	delay();
	EN=0;

}

void letter_write(char letter){

	RS=1; /* Data Register */
	RW=0; /* Write */
	DATA=letter;
	EN=1;
	delay();
	EN=0;
}

void lcd_string(char* str){

	unsigned short int i;

	for(i=0;str[i]!='\0';i++){
		letter_write(str[i]);
	}
}