/**
  ******************************************************************************
  * @file    EEPROM_Emulation/inc/eeprom.h 
  * @author  MCD Application Team
  * @version V3.1.0
  * @date    07/27/2009
  * @brief   This file contains all the functions prototypes for the EEPROM 
  *          emulation firmware library.
  ******************************************************************************
  * @copy
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2009 STMicroelectronics</center></h2>
  */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __EEPROM_H
#define __EEPROM_H

#define _FLASH
#define _FLASH_PROG

/* Includes ------------------------------------------------------------------*/
#include "standalone_config.h"

//Fixes for types used in this library
typedef uint8_t u8;
typedef uint16_t u16;
typedef int16_t s16;
typedef volatile uint16_t vu16;
typedef uint32_t u32;
typedef volatile uint32_t vu32;



/* Exported constants --------------------------------------------------------*/
/* Define the STM32F10Xxx Flash page size depending on the used STM32 device */
#define PAGE_SIZE  (u16)0x400  /* Page size = 1KByte */



/* EEPROM start address in Flash */
//#define EEPROM_START_ADDRESS    ((u32)0x08064000) /* EEPROM emulation start address:
//                                                  with page 200 (*2kb = 400kb) */
#define EEPROM_START_ADDRESS  ((u32)0x08000000 + 0x8000 - (2*PAGE_SIZE)) /* EEPROM emulation start address:
                                              last two blocks of 32kB space */

/* Pages 0 and 1 base and end addresses */
#define PAGE0_BASE_ADDRESS      ((u32)(EEPROM_START_ADDRESS + 0x000))
#define PAGE0_END_ADDRESS       ((u32)(EEPROM_START_ADDRESS + (PAGE_SIZE - 1)))

#define PAGE1_BASE_ADDRESS      ((u32)(EEPROM_START_ADDRESS + PAGE_SIZE))
#define PAGE1_END_ADDRESS       ((u32)(EEPROM_START_ADDRESS + (2 * PAGE_SIZE - 1)))

/* Used Flash pages for EEPROM emulation */
#define PAGE0                   ((u16)0x0000)
#define PAGE1                   ((u16)0x0001)

/* No valid page define */
#define NO_VALID_PAGE           ((u16)0x00AB)

/* Page status definitions */
#define ERASED                  ((u16)0xFFFF)     /* PAGE is empty */
#define RECEIVE_DATA            ((u16)0xEEEE)     /* PAGE is marked to receive data */
#define VALID_PAGE              ((u16)0x0000)     /* PAGE containing valid data */

/* Valid pages in read and write defines */
#define READ_FROM_VALID_PAGE    ((u8)0x00)
#define WRITE_IN_VALID_PAGE     ((u8)0x01)

/* Page full define */
#define PAGE_FULL               ((u8)0x80)

/* Variables' number */
#define NumbOfVar               ((u16)0x07)    		// 0 - 7

/* Exported types ------------------------------------------------------------*/
/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
u16 EE_Init(void);
u16 EE_ReadVariable(u16 VirtAddress, u16* Data);
u16 EE_WriteVariable(u16 VirtAddress, u16 Data);

#endif /* __EEPROM_H */

/******************* (C) COPYRIGHT 2009 STMicroelectronics *****END OF FILE****/
