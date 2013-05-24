// Inspired by http://eleceng.dit.ie/frank/arm/BareMetalSTM32F0Discovery/lcd_display.html

#ifndef __LCD_hd44780_H
#define __LCD_hd44780_H

#include "stm32f0xx.h"
#include <stdio.h>
#include <RTL.h>

__task void lcd (void);

void lcd_init (void);
void lcd_write_string(const char*);
void lcd_write_int(const int);
void lcd_send_cmd (uint8_t);
void lcd_clear (void);
void lcd_putc (char);
void lcd_goto_XY(uint8_t,uint8_t);
void lcd_backlight(char);

#define lcd_home() lcd_send_cmd(0x02);

#define lcd_write_string_XY(x,y,msg) {\
 lcd_goto_XY(x,y);\
 lcd_write_string(msg);\
}

#define lcd_write_int_XY(x,y,val,fl) {\
 lcd_goto_XY(x,y);\
 lcd_write_int(val,fl);\
}

#endif
