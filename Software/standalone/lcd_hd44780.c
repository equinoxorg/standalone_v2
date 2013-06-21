// Includes
#include "lcd_hd44780.h"

//Data Pin Definitions
	//PORT B
#define LCD_D4	GPIO_Pin_15
#define LCD_D5	GPIO_Pin_14
#define LCD_D6	GPIO_Pin_13
#define LCD_D7	GPIO_Pin_12

//Control Pin Definitions
	//PORT 
#define LCD_RS	GPIO_Pin_2
// \/ THIS PIN IS NEVER USED!!! \/
#define LCD_RW	GPIO_Pin_10
#define LCD_E		GPIO_Pin_11

#define LCD_BK_EN GPIO_Pin_1
#define LCD_PWR		GPIO_Pin_11

//Macro Definitions
#define		LCD_DISP_ON			0x0c
#define		LCD_DISP_OFF		0x08
#define		LCD_CLR					0x01
#define		LCD_HOME				0x02


//Function Prototypes
void delay100u (int);
void cycle_e (void);
void lcd_send_4_bits (uint8_t);
void lcd_set_custom_chars (void);

OS_ID bk_tmr = NULL;

//LCD testing routine
void lcd_test (void)
{
	int i = 0;
	char offset = 0;
	os_dly_wait(10);
	lcd_init();
	lcd_backlight(1);
		
	lcd_goto_XY(0,0);
	lcd_write_string("e.quinox");
	
	lcd_goto_XY(0,1);
	lcd_write_int(-12345);
	
	os_dly_wait(200);
	
	lcd_clear();

	while (1)
	{
		if (i%2)
		{
			lcd_goto_XY((i/2),0);
			lcd_putc('a'+offset);
			os_dly_wait(100);
		}
		else
		{
			lcd_goto_XY(0,1);
			lcd_write_int(i);
			os_dly_wait(100);			
		}
		
		if( ++i == 32 )
		{
			i = 0;
			offset++;
		}
	}
}

void lcd_backlight(char en)
{
	if (en)
	{
		GPIO_SetBits(GPIOB, LCD_BK_EN );
		
		//Stop old timer
		if (bk_tmr != NULL)
			os_tmr_kill(bk_tmr);
		
		//Restart timer
		bk_tmr = os_tmr_create (BK_TIMEOUT_S*100, 1);
		if (bk_tmr == NULL)
			printf("ERROR: Failed to create backlight timer \n");
		
	}
	else
	{
		//Stop old timer
		os_tmr_kill(bk_tmr);
		
		GPIO_ResetBits(GPIOB, LCD_BK_EN );
	}
}


void lcd_bk_tmr_expire(void)
{
	GPIO_ResetBits(GPIOB, LCD_BK_EN );
}

void lcd_power(char en)
{

	lcd_backlight(en);
	if (en)
	{
		lcd_send_cmd(LCD_DISP_ON);
	}
	else
	{
		//Turn off the display in software
		lcd_send_cmd(LCD_DISP_OFF);
	}
}

void lcd_write_int(const int val)
{
	char str[16];
	
	if ( snprintf( &str[0], 16, "%d", val ) > 16 )
			printf( "Warning: String too long \n");
	
	lcd_write_string(str);
}

void lcd_write_string(const char *msg)
{
	while(*msg!='\0')
	{
		lcd_putc(*msg);
		msg++;
	}
}

void lcd_goto_XY(uint8_t x, uint8_t y)
{
	//Default line 0, pos 0 address
	uint8_t addr = 0x80;
	
	if ( y == 1 )
		addr = 0xC0;
	
	addr += x;	
  lcd_send_cmd(addr); 
}

void delay100u (int dly)
{
  // delays for 100 microseconds * dly
  // at default clock speed (40MHz)
  int inner;
  while(dly--) 
  {
    inner=1300;
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
	
	GPIO_StructInit(&GPIO_InitStructure);
	
	GPIO_InitStructure.GPIO_Pin = LCD_PWR;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;	
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	
	GPIO_SetBits(GPIOA, LCD_PWR);	
	
	GPIO_ResetBits(GPIOB, (LCD_E | LCD_RS | LCD_RW ) );
	GPIO_ResetBits(GPIOB, (LCD_D4 | LCD_D5 | LCD_D6 | LCD_D7 | LCD_BK_EN) );
		
	delay100u(100);
	
	GPIO_SetBits(GPIOB, LCD_D5);
	cycle_e();
	lcd_send_cmd(LCD_DISP_ON);
	lcd_send_cmd( 0x28 );
	
	lcd_set_custom_chars();
	
	lcd_clear();		
	
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
	os_dly_wait(1);
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

__inline void lcd_send_data (uint8_t data)
{
	lcd_putc(data);
}

void lcd_set_custom_chars(void)
{
    //Shift to start of RAM
    lcd_send_cmd(0x40);

    //Char0
    lcd_send_data(0x1F);
    lcd_send_data(0x10);
    lcd_send_data(0x10);
    lcd_send_data(0x10);
    lcd_send_data(0x10);
    lcd_send_data(0x10);
    lcd_send_data(0x10);
    lcd_send_data(0x1F);

    //Char1
    lcd_send_data(0x1F);
    lcd_send_data(0x00);
    lcd_send_data(0x00);
    lcd_send_data(0x00);
    lcd_send_data(0x00);
    lcd_send_data(0x00);
    lcd_send_data(0x00);
    lcd_send_data(0x1F);

    //Char2
    lcd_send_data(0x1C);
    lcd_send_data(0x04);
    lcd_send_data(0x07);
    lcd_send_data(0x01);
    lcd_send_data(0x01);
    lcd_send_data(0x07);
    lcd_send_data(0x04);
    lcd_send_data(0x1C);

    //Char3
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);

    //Char4
    lcd_send_data(0x1C);
    lcd_send_data(0x1C);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1C);
    lcd_send_data(0x1C);
}

void lcd_batt_level(int batt_level) {
	
    lcd_goto_XY(0,1);
	
    if (batt_level >= 90)
		{
			lcd_batt_100();
		}
		else if (batt_level >= 70)
		{
			lcd_batt_80();
    }
		else if (batt_level >= 50)
		{
			lcd_batt_60();
    } 
		else if (batt_level >= 30)
		{
			lcd_batt_40();
    } 
		else if (batt_level >= 10)
		{
			lcd_batt_20();
    } 
		else 
		{
			lcd_batt_0();
    }

    lcd_goto_XY(17, 0);
}

