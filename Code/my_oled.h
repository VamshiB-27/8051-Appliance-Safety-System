#ifndef my_oled_h
#define my_oled_h

unsigned char init_oled(void);
unsigned char oled_command(unsigned char command);
void oled_write_char(unsigned char character);
void oled_write_string(const char *text);

#endif