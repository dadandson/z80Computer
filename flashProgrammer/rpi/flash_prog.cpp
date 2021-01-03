#include "flash_prog.h"
#include <cstdio>

int main(int arc, char *argv[]) {
	if(gpioInitialise()>0) {
		printf("init successful\n");
	} else {
		printf("init failed\n");
	}
	gpioTerminate();
	return 0;
}
