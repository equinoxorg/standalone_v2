// Inspired by http://eleceng.dit.ie/frank/arm/BareMetalSTM32F0Discovery/lcd_display.html

#ifndef __LCD_hd44780_H
#define __LCD_hd44780_H

#include "stm32f0xx.h"
#include <stdio.h>
#include <RTL.h>

//LCD timeout turns off backlight after
//defined numer of seconds
#define BK_TIMEOUT_S 15

void lcd_test (void);
void lcd_init (void);
void lcd_write_string(const char*);
void lcd_write_int(const int);
void lcd_send_cmd (uint8_t);
void lcd_clear (void);
void lcd_putc (char);
void lcd_goto_XY(uint8_t,uint8_t);
void lcd_backlight(char);
void lcd_power(char);
void lcd_batt_level(int);
void lcd_bk_tmr_expire(void);
void lcd_charging( float );

__inline void lcd_send_data (uint8_t);

#define lcd_home() lcd_send_cmd(0x02);

#define lcd_write_string_XY(x,y,msg) {\
 lcd_goto_XY(x,y);\
 lcd_write_string(msg);\
}

#define lcd_write_int_XY(x,y,val,fl) {\
 lcd_goto_XY(x,y);\
 lcd_write_int(val,fl);\
}

//Send Battery Symbols
#define lcd_batt_100()  lcd_send_data(0x03);\
												lcd_send_data(0x03);\
												lcd_send_data(0x03);\
												lcd_send_data(0x03);\
												lcd_send_data(0x04)

#define lcd_batt_80()   lcd_send_data(0x03);\
												lcd_send_data(0x03);\
												lcd_send_data(0x03);\
												lcd_send_data(0x03);\
												lcd_send_data(0x02)

#define lcd_batt_60()		lcd_send_data(0x03);\
												lcd_send_data(0x03);\
												lcd_send_data(0x03);\
												lcd_send_data(0x01);\
												lcd_send_data(0x02)

#define lcd_batt_40()		lcd_send_data(0x03);\
												lcd_send_data(0x03);\
												lcd_send_data(0x01);\
												lcd_send_data(0x01);\
												lcd_send_data(0x02)

#define lcd_batt_20()		lcd_send_data(0x03);\
												lcd_send_data(0x01);\
												lcd_send_data(0x01);\
												lcd_send_data(0x01);\
												lcd_send_data(0x02)

#define lcd_batt_0()		lcd_send_data(0x00);\
												lcd_send_data(0x01);\
												lcd_send_data(0x01);\
												lcd_send_data(0x01);\
												lcd_send_data(0x02)

#endif
