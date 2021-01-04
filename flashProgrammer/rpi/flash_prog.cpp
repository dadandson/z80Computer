#include "flash_prog.h"
#include <cstdio>

static const uint8_t dataPinArray[8] {
	F_D0
	, F_D1
	, F_D2
	, F_D3
	, F_D4
	, F_D5
	, F_D6
	, F_D7
};

static const uint8_t addrPinArray[17] {
	F_A0
	, F_A1	
	, F_A2	
	, F_A3	
	, F_A4	
	, F_A5	
	, F_A6	
	, F_A7	
	, F_A8	
	, F_A9	
	, F_A10	
	, F_A11
	, F_A12
	, F_A13
	, F_A14
	, F_A15
	, F_A16
};

static const int32_t addrPinArraySize = sizeof(addrPinArray)/sizeof(addrPinArray[0]);
static const int32_t dataPinArraySize = sizeof(dataPinArray)/sizeof(dataPinArray[0]);

void init() {
	for(int i=0;i<addrPinArraySize;++i) {
		int ret = gpioSetMode(addrPinArray[i],PI_OUTPUT);
		if(ret!=0) {
			printf("A%d - Pin %d error %d setting pin mode\n",i,(int32_t)addrPinArray[i],ret);
		} else {
			printf("A%d - Pin %d set to output ok\n",i, (int32_t)addrPinArray[i]);
		}
	}
	for(int i=0;i<dataPinArraySize;++i) {
		int ret = gpioSetMode(dataPinArray[i],PI_OUTPUT);
		if(0!=ret) {
			printf("D%d - Pin %d error %d setting pin mode\n",i,(int32_t)dataPinArray[i],ret);
		} else {
			printf("D%d - Pin %d set to output ok\n",i, (int32_t)dataPinArray[i]);
		}
	}
}

void setAddrPins(int32_t addr) {
	for(int i=0;addrPinArraySize;++i) {
		if((addr&(1<<i))!=0) {
			gpioWrite(addrPinArray[i],1);
		} else {
			gpioWrite(addrPinArray[i],0);
		}
	}
}

int main(int arc, char *argv[]) {
	if(gpioInitialise()>0) {
		printf("init successful\n");
		init();
		//setAddrPins(0);
	} else {
		printf("init failed\n");
	}
	gpioTerminate();
	return 0;
}


