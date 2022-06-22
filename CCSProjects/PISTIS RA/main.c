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

    attest_appcode();
    while(1);
}
