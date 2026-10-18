#ifndef my_lcd_h
#define my_lcd_h

/* Used to detect reuse of same pins for different operations */

#ifdef P0_0_USED
#error "P0_0 is used alderady cannot be reused in my_lcd.h"
#endif

#ifdef P0_1_USED
#error "P0_1 is used alderady cannot be reused in my_lcd.h"
#endif

#ifdef P0_2_USED
#error "P0_2 is used alderady cannot be reused in my_lcd.h"
#endif

#ifdef P2_0_USED
#error "P2.0 is already used; cannot reuse it in my_lcd.h"
#endif

#ifdef P2_1_USED
#error "P2.1 is already used; cannot reuse it in my_lcd.h"
#endif

#ifdef P2_2_USED
#error "P2.2 is already used; cannot reuse it in my_lcd.h"
#endif

#ifdef P2_3_USED
#error "P2.3 is already used; cannot reuse it in my_lcd.h"
#endif

#ifdef P2_4_USED
#error "P2.4 is already used; cannot reuse it in my_lcd.h"
#endif

#ifdef P2_5_USED
#error "P2.5 is already used; cannot reuse it in my_lcd.h"
#endif

#ifdef P2_6_USED
#error "P2.6 is already used; cannot reuse it in my_lcd.h"
#endif

#ifdef P2_7_USED
#error "P2.7 is already used; cannot reuse it in my_lcd.h"
#endif

#define P0_0_USED
#define P0_1_USED
#define P0_2_USED
#define P2_0_USED
#define P2_1_USED
#define P2_2_USED
#define P2_3_USED
#define P2_4_USED
#define P2_5_USED
#define P2_6_USED
#define P2_7_USED

/* Start of declartions */

#define RS    P0_0
#define RW    P0_1
#define EN    P0_2
#define DATA  P2

void lcd_init(void);
void cmd_write(char cmd);
void letter_write(char letter);
void string_write(char* str);

#endif