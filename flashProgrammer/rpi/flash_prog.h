/*
 * J8:
   3V3  (1) (2)  5V
 GPIO2  (3) (4)  5V
 GPIO3  (5) (6)  GND
 GPIO4  (7) (8)  GPIO14
   GND  (9) (10) GPIO15
GPIO17 (11) (12) GPIO18
GPIO27 (13) (14) GND
GPIO22 (15) (16) GPIO23
   3V3 (17) (18) GPIO24
GPIO10 (19) (20) GND
 GPIO9 (21) (22) GPIO25
GPIO11 (23) (24) GPIO8
   GND (25) (26) GPIO7
 GPIO0 (27) (28) GPIO1
 GPIO5 (29) (30) GND
 GPIO6 (31) (32) GPIO12
GPIO13 (33) (34) GND
GPIO19 (35) (36) GPIO16
GPIO26 (37) (38) GPIO20
   GND (39) (40) GPIO21
*/

#include <pigpio.h>

static const uint8_t F_A0=2;
static const uint8_t F_A1=3;
static const uint8_t F_A2=4;
static const uint8_t F_A3=17;
static const uint8_t F_A4=27;
static const uint8_t F_A5=22;
static const uint8_t F_A6=10;
static const uint8_t F_A7=9;
static const uint8_t F_A8=11;
static const uint8_t F_A9=0;
static const uint8_t F_A10=5;
static const uint8_t F_A11=6;
static const uint8_t F_A12=13;
static const uint8_t F_A13=19;
static const uint8_t F_A14=26;
static const uint8_t F_A15=14;


static const uint8_t F_D0=14;
static const uint8_t F_D1=15;
static const uint8_t F_D2=18;
static const uint8_t F_D3=23;
static const uint8_t F_D4=24;
static const uint8_t F_D5=25;
static const uint8_t F_D6=8;
static const uint8_t F_D7=7;

static const uint8_t CS=1;
static const uint8_t WE=12;
static const uint8_t OE=16;


