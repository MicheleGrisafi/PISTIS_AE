#include <msp430.h>
#include <secureUpdate.h>
#include <core.h>
#include "stdlib.h"

/**
 * main.c
 */

void main(void)
{
    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer

    __asm("BR #receiveUpdate"); //Jump to the receive update function in the TCM
    while(1);
}
