// Includes
#include "lcd_hd44780.h"

//Pin Definitions
#define LCD_D4	GPIO_Pin_15
#define LCD_D5	GPIO_Pin_14
#define LCD_D6	GPIO_Pin_13
#define LCD_D7	GPIO_Pin_12

#define LCD_RS	GPIO_Pin_2
// \/ THIS PIN IS NEVER USED!!! \/
#define LCD_RW	GPIO_Pin_10
#define LCD_E		GPIO_Pin_11

#define LCD_BK_EN GPIO_Pin_1

//Macro Definitions
#define		LCD_DISP_ON			0x0c
#define		LCD_DISP_OFF		0x08
#define		LCD_CLR					0x01
#define		LCD_HOME				0x02


//Function Prototypes
void delay100u (int);
void cycle_e (void);
void lcd_init (void);
void lcd_send_cmd (uint8_t);
void lcd_send_4_bits (uint8_t);
void lcd_clear (void);
void lcd_putc (char);

//Main lcd task which handles all interactions with the LCD
__task void lcd (void)
{
	lcd_init();
	
	while (1)
	{
		lcd_putc('a');
		//Wait 2s
		os_dly_wait(2000);
	}
}

void delay100u (int dly)
{
  // delays for 100 microseconds * dly
  // at default clock speed (40MHz)
  int inner;
  while(dly--) 
  {
    inner=130;
    while(inner--);
  }
}

void cycle_e (void)
{
  GPIO_SetBits(GPIOB, LCD_E);
  delay100u(1);
  GPIO_ResetBits(GPIOB, LCD_E);
  delay100u(1);
}

void lcd_init (void) 
{
	//Variables
	GPIO_InitTypeDef GPIO_InitStructure;
	
	
	//Turn on GPIOB Clock for port B
	RCC_AHBPeriphClockCmd( RCC_AHBPeriph_GPIOB, ENABLE);
	

	//Configure Pins
	GPIO_StructInit(&GPIO_InitStructure);
	
	GPIO_InitStructure.GPIO_Pin = LCD_D4 | LCD_D5 | LCD_D6 | LCD_D7 | LCD_RS | LCD_RW | LCD_E | LCD_BK_EN ;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;	
	
	GPIO_Init(GPIOB, &GPIO_InitStructure);
	
	
	//Software Reset Display
	GPIO_SetBits(GPIOB, (LCD_D4 | LCD_D5) );
	GPIO_ResetBits(GPIOB, (LCD_D6 | LCD_D7) );
	
	cycle_e(); 
  delay100u(100);
  cycle_e(); 
  delay100u(100);
  cycle_e(); 
  delay100u(100);
	
	GPIO_ResetBits(GPIOB, LCD_D4 );
	cycle_e();
	lcd_send_cmd(LCD_DISP_ON);
	lcd_clear();
	
	//Wait 20ms, handing control to other tasks
	os_dly_wait(20);
	
	
}

void lcd_send_4_bits (uint8_t c)
{
	//Bit messy but required if any
	//combinations of data pins can be used
	
	if ( (c >> 0) & 0x01 )
		GPIO_SetBits(GPIOB, LCD_D4 );
	else
		GPIO_ResetBits(GPIOB, LCD_D4 );
	
	if ( (c >> 1) & 0x01 )
		GPIO_SetBits(GPIOB, LCD_D5 );
	else
		GPIO_ResetBits(GPIOB, LCD_D5 );
	
	if ( (c >> 2) & 0x01 )
		GPIO_SetBits(GPIOB, LCD_D6 );
	else
		GPIO_ResetBits(GPIOB, LCD_D6 );
	
	if ( (c >> 3) & 0x01 )
		GPIO_SetBits(GPIOB, LCD_D7 );
	else
		GPIO_ResetBits(GPIOB, LCD_D7 );
}


void lcd_send_cmd (uint8_t c)
{
	//Send Upper Bits
	lcd_send_4_bits(c>>4);
	GPIO_ResetBits(GPIOB, LCD_RS);
	cycle_e();
	
	//Send Lower Bits
	lcd_send_4_bits(c);	
	GPIO_ResetBits(GPIOB, LCD_RS);
	cycle_e();
	
}

void lcd_clear (void)
{
	lcd_send_cmd(LCD_CLR);
	delay100u(20);
}

void lcd_putc (char c)
{
	//Send Upper Bits
	lcd_send_4_bits(c>>4);
	GPIO_SetBits(GPIOB, LCD_RS);
	cycle_e();
	
	//Send Lower Bits
	lcd_send_4_bits(c);	
	GPIO_SetBits(GPIOB, LCD_RS);
	cycle_e();
}

