/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f3xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */


/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define DATA3_Pin GPIO_PIN_13
#define DATA3_GPIO_Port GPIOC
#define Z80CLK_INT_Pin GPIO_PIN_0
#define Z80CLK_INT_GPIO_Port GPIOC
#define Z80CLK_INT_EXTI_IRQn EXTI0_IRQn
#define DATA4_Pin GPIO_PIN_1
#define DATA4_GPIO_Port GPIOC
#define DATA5_Pin GPIO_PIN_2
#define DATA5_GPIO_Port GPIOC
#define DATA6_Pin GPIO_PIN_3
#define DATA6_GPIO_Port GPIOC
#define ADDR0_Pin GPIO_PIN_0
#define ADDR0_GPIO_Port GPIOA
#define ADDR1_Pin GPIO_PIN_1
#define ADDR1_GPIO_Port GPIOA
#define USART_TX_Pin GPIO_PIN_2
#define USART_TX_GPIO_Port GPIOA
#define USART_RX_Pin GPIO_PIN_3
#define USART_RX_GPIO_Port GPIOA
#define ADDR2_Pin GPIO_PIN_4
#define ADDR2_GPIO_Port GPIOA
#define ADDR3_Pin GPIO_PIN_5
#define ADDR3_GPIO_Port GPIOA
#define ADDR4_Pin GPIO_PIN_6
#define ADDR4_GPIO_Port GPIOA
#define ADDR5_Pin GPIO_PIN_7
#define ADDR5_GPIO_Port GPIOA
#define DATA7_Pin GPIO_PIN_4
#define DATA7_GPIO_Port GPIOC
#define M1_Pin GPIO_PIN_5
#define M1_GPIO_Port GPIOC
#define ADDR11_Pin GPIO_PIN_0
#define ADDR11_GPIO_Port GPIOB
#define ADDR12_Pin GPIO_PIN_1
#define ADDR12_GPIO_Port GPIOB
#define ADDR13_Pin GPIO_PIN_2
#define ADDR13_GPIO_Port GPIOB
#define ADDR14_Pin GPIO_PIN_10
#define ADDR14_GPIO_Port GPIOB
#define ADDR15_Pin GPIO_PIN_11
#define ADDR15_GPIO_Port GPIOB
#define DATA0_Pin GPIO_PIN_12
#define DATA0_GPIO_Port GPIOB
#define GREEN_LED_Pin GPIO_PIN_13
#define GREEN_LED_GPIO_Port GPIOB
#define DATA1_Pin GPIO_PIN_14
#define DATA1_GPIO_Port GPIOB
#define DATA2_Pin GPIO_PIN_15
#define DATA2_GPIO_Port GPIOB
#define MREQ_Pin GPIO_PIN_6
#define MREQ_GPIO_Port GPIOC
#define IORQ_Pin GPIO_PIN_7
#define IORQ_GPIO_Port GPIOC
#define RD_Pin GPIO_PIN_8
#define RD_GPIO_Port GPIOC
#define WR_Pin GPIO_PIN_9
#define WR_GPIO_Port GPIOC
#define ADDR6_Pin GPIO_PIN_8
#define ADDR6_GPIO_Port GPIOA
#define ADDR7_Pin GPIO_PIN_9
#define ADDR7_GPIO_Port GPIOA
#define ADDR8_Pin GPIO_PIN_10
#define ADDR8_GPIO_Port GPIOA
#define ADDR9_Pin GPIO_PIN_11
#define ADDR9_GPIO_Port GPIOA
#define ADDR10_Pin GPIO_PIN_12
#define ADDR10_GPIO_Port GPIOA
#define TMS_Pin GPIO_PIN_13
#define TMS_GPIO_Port GPIOA
#define TCK_Pin GPIO_PIN_14
#define TCK_GPIO_Port GPIOA
#define BUSAK_Pin GPIO_PIN_15
#define BUSAK_GPIO_Port GPIOA
#define INT_Pin GPIO_PIN_2
#define INT_GPIO_Port GPIOD
#define SWO_Pin GPIO_PIN_3
#define SWO_GPIO_Port GPIOB
#define BUSRQ_Pin GPIO_PIN_4
#define BUSRQ_GPIO_Port GPIOB
#define NMI_Pin GPIO_PIN_5
#define NMI_GPIO_Port GPIOB
#define WAIT_Pin GPIO_PIN_8
#define WAIT_GPIO_Port GPIOB
#define DATA0B9_Pin GPIO_PIN_9
#define DATA0B9_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
