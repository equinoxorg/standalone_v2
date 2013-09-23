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

#define INPUT	0
#define OUTPUT 1

//Function Prototypes
void delay_us (int);
void delay_ms (int);
//void delay100u (int);
void cycle_e (void);
void lcd_send_4_bits (uint8_t);
void lcd_set_custom_chars (void);

OS_ID bk_tmr = NULL;


// void set_data_io ( int io )
// {
// 	GPIO_InitTypeDef GPIO_InitStructure;
// 	
// 	GPIO_InitStructure.GPIO_Pin = LCD_D4 | LCD_D5 | LCD_D6 | LCD_D7;
// 	if (io == INPUT)
// 		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
// 	else
// 		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
//   GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
//   GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//   GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;	
// 	GPIO_Init(GPIOB, &GPIO_InitStructure);
// 	
// }

// uint8_t read_data_inputs (void) {
// 	uint8_t temp = 0;
// 	
// 	temp = GPIO_ReadOutputDataBit(GPIOB, LCD_D4);
// 	
// 	temp |= GPIO_ReadOutputDataBit(GPIOB, LCD_D5) < 1;
// 	temp |= GPIO_ReadOutputDataBit(GPIOB, LCD_D6) < 2;
// 	temp |= GPIO_ReadOutputDataBit(GPIOB, LCD_D7) < 3;
// 	
// 	return temp;
// }

// void lcd_wait()
// {
// 	//This function waits till lcd is BUSY

// 	uint8_t busy, temp;
// 	uint8_t status=0x00;
// 	
// 	//Change Port to input type because we are reading data
// 	//LCD_DATA_TRIS|=0x0F;
// 	set_data_io(INPUT);

// 	//change LCD mode
// 	//SET_RW();		//Read mode
// 	GPIO_SetBits(GPIOB, LCD_RW);
// 		
// 	//CLEAR_RS();		//Read status
// 	GPIO_ResetBits(GPIOB, LCD_RS);

// 	//Let the RW/RS lines stabilize
// 	delay_us(0.5);		//tAS

// 	
// 	do
// 	{

// 		//SET_E();
// 		GPIO_SetBits(GPIOB, LCD_E);
// 		

// 		//Wait tDA for data to become available
// 		delay_us(0.5);

// 		status = read_data_inputs();
// 		status = status<<4;

// 		delay_us(0.5);

// 		//Pull E low
// 		//CLEAR_E();
// 		GPIO_ResetBits(GPIOB, LCD_E);
// 		
// 		delay_us(1);	//tEL

// 		//SET_E();
// 		GPIO_SetBits(GPIOB, LCD_E);
// 		
// 		delay_us(0.5);

// 		temp = read_data_inputs();
// 		temp &= 0x0F;

// 		status = status | temp;

// 		busy = status & 0x80;

// 		delay_us(0.5);
// 		
// 		//CLEAR_E();
// 		GPIO_ResetBits(GPIOB, LCD_E);
// 		
// 		delay_us(1);	//tEL
// 		
// 	} while (busy);

// 	//write mode
// 	//CLEAR_RW();
// 	GPIO_ResetBits(GPIOB, LCD_RW);
// 	
// 	//Change Port to output
// 	//LCD_DATA_TRIS&=0xF0;
// 	set_data_io(OUTPUT);

// }


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
			TRACE_ERROR("Failed to create backlight timer \n");
		
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
			TRACE_WARNING( "String too long \n");
	
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

void delay_ms (volatile int ms) {
	while (ms--)
	{
		delay_us(1000);
	}
}

void delay_us (volatile int us) {
	// delays for 1 microseconds * dly
  // at default clock speed (40MHz)
  volatile int inner;
  while(us--) 
  {
    inner=13;
    while(inner--);
  }
}

void cycle_e (void)
{
	tsk_lock();
  GPIO_SetBits(GPIOB, LCD_E);
  delay_us(100);
  GPIO_ResetBits(GPIOB, LCD_E);
  delay_us(100);
	tsk_unlock();
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
	
	
	//If reset due to user holding power button for >10s
// 	if ( RCC_GetFlagStatus(RCC_FLAG_PINRST) == SET ) {	
// 		TRACE_INFO("Hardware Reset was detected\n");
// 		
// 		//Clear Flag
// 		RCC_ClearFlag();
// 		
// 		lcd_power(1);
// 		lcd_clear();		
// 	}
// 	else
// 	{
		//LCD Not Inited so Init it
		
		GPIO_ResetBits(GPIOB, (LCD_E | LCD_RS | LCD_RW ) );
		GPIO_ResetBits(GPIOB, (LCD_D4 | LCD_D5 | LCD_D6 | LCD_D7 | LCD_BK_EN) );

		GPIO_SetBits(GPIOA, LCD_PWR);	
		
		tsk_lock();
		delay_ms(100);
		tsk_unlock();
			
		GPIO_SetBits(GPIOB, LCD_D5);
		cycle_e();
		lcd_send_cmd(LCD_DISP_ON);
		lcd_send_cmd( 0x28 );
		
		lcd_set_custom_chars();
		
		lcd_clear();		
// 	}
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
    //Shift to 2nd line at start of RAM
    lcd_send_cmd(0x40);
		
		//Sets the custom charcters in the character ROM for the battery display
	
    //Char0 --> Left side of battery
    lcd_send_data(0x1F);
    lcd_send_data(0x10);
    lcd_send_data(0x10);
    lcd_send_data(0x10);
    lcd_send_data(0x10);
    lcd_send_data(0x10);
    lcd_send_data(0x10);
    lcd_send_data(0x1F);

    //Char1 --> Line on top and Bottom
    lcd_send_data(0x1F);
    lcd_send_data(0x00);
    lcd_send_data(0x00);
    lcd_send_data(0x00);
    lcd_send_data(0x00);
    lcd_send_data(0x00);
    lcd_send_data(0x00);
    lcd_send_data(0x1F);

    //Char2	--> empty end of battery
    lcd_send_data(0x1C);
    lcd_send_data(0x04);
    lcd_send_data(0x07);
    lcd_send_data(0x01);
    lcd_send_data(0x01);
    lcd_send_data(0x07);
    lcd_send_data(0x04);
    lcd_send_data(0x1C);

    //Char3 --> Full Cell
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);

    //Char4 --> full end of battery
    lcd_send_data(0x1C);
    lcd_send_data(0x1C);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1F);
    lcd_send_data(0x1C);
    lcd_send_data(0x1C);
}

void lcd_batt_level(int batt_level, float charge_rate) {
	
    lcd_goto_XY(0,1);
	
	if (charge_rate > 0){
	
    if (batt_level >= 100 )
		{
			lcd_batt_100();

		}
		else if (batt_level >= 80)
		{
			lcd_batt_80();
			os_dly_wait(30);
			lcd_goto_XY(0,1);
			lcd_batt_100();
    }
		else if (batt_level >= 60)
		{
			lcd_batt_60();
			os_dly_wait(30);
			lcd_goto_XY(0,1);
			lcd_batt_80();
    } 
		else if (batt_level >= 40)
		{
			lcd_batt_40();
			os_dly_wait(30);
			lcd_goto_XY(0,1);
			lcd_batt_60();
    } 
		else if (batt_level >= 20)
		{
			lcd_batt_20();
			os_dly_wait(30);
			lcd_goto_XY(0,1);
			lcd_batt_40();
    } 
		else 
		{
			lcd_batt_0();
			os_dly_wait(30);
			lcd_goto_XY(0,1);
			lcd_batt_20();
    }

    lcd_goto_XY(17, 0);
}

else {
	    if (batt_level >= 90 )
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
}


