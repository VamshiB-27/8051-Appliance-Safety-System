#ifndef my_oled_h
#define my_oled_h

void i2c_start(void);
void i2c_stop(void);
unsigned char i2c_write(unsigned char dat);

void oled_init(void);
void oled_command(unsigned char cmd);
void oled_data(unsigned char dat);
void oled_clear(void);
void oled_set_position(unsigned char page, unsigned char column);
void oled_char(unsigned char c);
void oled_string(char *str);

#endif
