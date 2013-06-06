// Inspired by http://eleceng.dit.ie/frank/arm/BareMetalSTM32F0Discovery/lcd_display.html

#ifndef __LCD_hd44780_H
#define __LCD_hd44780_H

#include "stm32f0xx.h"
#include <stdio.h>
#include <RTL.h>

void lcd_test (void);
void lcd_init (void);
void lcd_write_string(const char*);
void lcd_write_int(const int);
void lcd_send_cmd (uint8_t);
void lcd_clear (void);
void lcd_putc (char);
void lcd_goto_XY(uint8_t,uint8_t);
void lcd_backlight(char);
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
#define lcd_batt_100()  LCDData(0x03);\
												LCDData(0x03);\
												LCDData(0x03);\
												LCDData(0x03);\
												LCDData(0x04)

#define lcd_batt_80()   LCDData(0x03);\
												LCDData(0x03);\
												LCDData(0x03);\
												LCDData(0x03);\
												LCDData(0x02)

#define lcd_batt_60()		LCDData(0x03);\
												LCDData(0x03);\
												LCDData(0x03);\
												LCDData(0x01);\
												LCDData(0x02)

#define lcd_batt_40()		LCDData(0x03);\
												LCDData(0x03);\
												LCDData(0x01);\
												LCDData(0x01);\
												LCDData(0x02)

#define lcd_batt_20()		LCDData(0x03);\
												LCDData(0x01);\
												LCDData(0x01);\
												LCDData(0x01);\
												LCDData(0x02)

#define lcd_batt_0()		LCDData(0x00);\
												LCDData(0x01);\
												LCDData(0x01);\
												LCDData(0x01);\
												LCDData(0x02)

#endif
