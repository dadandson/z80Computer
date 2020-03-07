/*
 * my_main.cpp
 *
 *  Created on: Mar 4, 2020
 *      Author: dcomes
 */

#include <my_main.h>
#include "main.h"
#include <libstm32/app/app.h>
#include <libstm32/etl/src/queue.h>

using cmdc0de::ErrorType;
using cmdc0de::StateBase;

struct Z80Info {
	uint16_t Address;
	int8_t Data;
	union  {
		struct {
			uint16_t BUSRQ:1;
			uint16_t NMI:1;
			uint16_t M1:1;
			uint16_t MREQ:1;
			uint16_t IORQ:1;
			uint16_t RD:1;
			uint16_t WR:1;
			uint16_t INT:1;
			uint16_t WAIT:1;
		} FLAGS;
		uint16_t flags;
	};
	Z80Info() : Address(0), Data(0), flags(0) {}
};

class MyApp : public cmdc0de::App {
protected:
	virtual ErrorType onInit() {
		return ErrorType();
	}
	virtual ErrorType onRun();
	void outputData();
public:
	MyApp();
	virtual ~MyApp() {}
	void gatherData();
private:
	etl::queue<Z80Info,5> InfoQueue;
};

MyApp::MyApp() : cmdc0de::App(), InfoQueue() {}

ErrorType MyApp::onRun() {
	outputData();
	return ErrorType();
}

void MyApp::gatherData() {
	Z80Info info;
	info.Address =  HAL_GPIO_ReadPin(ADDR15_GPIO_Port,ADDR15_Pin)==GPIO_PIN_SET?1<<15:0;
	info.Address |= HAL_GPIO_ReadPin(ADDR14_GPIO_Port,ADDR14_Pin)==GPIO_PIN_SET?1<<14:0;
	info.Address |= HAL_GPIO_ReadPin(ADDR13_GPIO_Port,ADDR13_Pin)==GPIO_PIN_SET?1<<13:0;
	info.Address |= HAL_GPIO_ReadPin(ADDR12_GPIO_Port,ADDR12_Pin)==GPIO_PIN_SET?1<<12:0;
	info.Address |= HAL_GPIO_ReadPin(ADDR11_GPIO_Port,ADDR11_Pin)==GPIO_PIN_SET?1<<11:0;
	info.Address |= HAL_GPIO_ReadPin(ADDR10_GPIO_Port,ADDR10_Pin)==GPIO_PIN_SET?1<<10:0;
	info.Address |= HAL_GPIO_ReadPin(ADDR9_GPIO_Port,ADDR9_Pin)==GPIO_PIN_SET?1<<9:0;
	info.Address |= HAL_GPIO_ReadPin(ADDR8_GPIO_Port,ADDR8_Pin)==GPIO_PIN_SET?1<<8:0;
	info.Address |= HAL_GPIO_ReadPin(ADDR7_GPIO_Port,ADDR7_Pin)==GPIO_PIN_SET?1<<7:0;
	info.Address |= HAL_GPIO_ReadPin(ADDR6_GPIO_Port,ADDR6_Pin)==GPIO_PIN_SET?1<<6:0;
	info.Address |= HAL_GPIO_ReadPin(ADDR5_GPIO_Port,ADDR5_Pin)==GPIO_PIN_SET?1<<5:0;
	info.Address |= HAL_GPIO_ReadPin(ADDR4_GPIO_Port,ADDR4_Pin)==GPIO_PIN_SET?1<<4:0;
	info.Address |= HAL_GPIO_ReadPin(ADDR3_GPIO_Port,ADDR3_Pin)==GPIO_PIN_SET?1<<3:0;
	info.Address |= HAL_GPIO_ReadPin(ADDR2_GPIO_Port,ADDR2_Pin)==GPIO_PIN_SET?1<<2:0;
	info.Address |= HAL_GPIO_ReadPin(ADDR1_GPIO_Port,ADDR1_Pin)==GPIO_PIN_SET?1<<1:0;
	info.Address |= HAL_GPIO_ReadPin(ADDR0_GPIO_Port,ADDR0_Pin)==GPIO_PIN_SET?1:0;
	info.Data =  HAL_GPIO_ReadPin(DATA7_GPIO_Port,DATA7_Pin)==GPIO_PIN_SET?1<<7:0;
	info.Data |= HAL_GPIO_ReadPin(DATA6_GPIO_Port,DATA6_Pin)==GPIO_PIN_SET?1<<6:0;
	info.Data |= HAL_GPIO_ReadPin(DATA5_GPIO_Port,DATA5_Pin)==GPIO_PIN_SET?1<<5:0;
	info.Data |= HAL_GPIO_ReadPin(DATA4_GPIO_Port,DATA4_Pin)==GPIO_PIN_SET?1<<4:0;
	info.Data |= HAL_GPIO_ReadPin(DATA3_GPIO_Port,DATA3_Pin)==GPIO_PIN_SET?1<<3:0;
	info.Data |= HAL_GPIO_ReadPin(DATA2_GPIO_Port,DATA2_Pin)==GPIO_PIN_SET?1<<2:0;
	info.Data |= HAL_GPIO_ReadPin(DATA1_GPIO_Port,DATA1_Pin)==GPIO_PIN_SET?1<<1:0;
	info.Data |= HAL_GPIO_ReadPin(DATA0_GPIO_Port,DATA0_Pin)==GPIO_PIN_SET?1:0;
	info.FLAGS.BUSRQ = HAL_GPIO_ReadPin(BUSRQ_GPIO_Port,BUSRQ_Pin)==GPIO_PIN_SET;
	info.FLAGS.INT = HAL_GPIO_ReadPin(INT_GPIO_Port,INT_Pin)==GPIO_PIN_SET;
	info.FLAGS.M1 = HAL_GPIO_ReadPin(M1_GPIO_Port,M1_Pin)==GPIO_PIN_SET;
	info.FLAGS.MREQ = HAL_GPIO_ReadPin(MREQ_GPIO_Port,MREQ_Pin)==GPIO_PIN_SET;
	info.FLAGS.NMI = HAL_GPIO_ReadPin(NMI_GPIO_Port,NMI_Pin)==GPIO_PIN_SET;
	info.FLAGS.RD = HAL_GPIO_ReadPin(RD_GPIO_Port,RD_Pin)==GPIO_PIN_SET;
	info.FLAGS.WR = HAL_GPIO_ReadPin(WR_GPIO_Port,WR_Pin)==GPIO_PIN_SET;
	info.FLAGS.WAIT = HAL_GPIO_ReadPin(WAIT_GPIO_Port,WAIT_Pin)==GPIO_PIN_SET;
	InfoQueue.push(info);
}

void MyApp::outputData() {

}

static MyApp TheApp;

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin) {
	/* Prevent unused argument(s) compilation warning */
	UNUSED(GPIO_Pin);
	TheApp.gatherData();
}


void initApp() {

}

void run() {
	TheApp.run();
}
