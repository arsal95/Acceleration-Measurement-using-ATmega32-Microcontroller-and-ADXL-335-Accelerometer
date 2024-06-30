/*
 * DataAcquisition.c
 *
 * Created: Sep. 2021, Bochert
 *
 * Program skeleton for the experiments in maritime 
 * systems laboratory of embedded system design.
 * Prior to modify the program, change the name in
 * the "Created:" line. 
 */ 

#define F_CPU 16000000

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "fifo.h"
#include "uart.h"
#include "dataio.h"
#include "timer0interupt.h"

volatile uint16_t intnum=0;
volatile uint8_t *bufcounter;

void InitialiseHardware(void)
{
	sei();							// enables interrupts by setting the global interrupt mask
	AdcInit();						// initializes the a/d converter
	bufcounter = uart_init(19200);	// initializes the UART for the given baudrate
	PortInit();						// initializes the port settings
	StartTimer0Interrupt();			// timer 0 interrupt for 15 ms
}

int main(void)
/*
Example program for first experiments.
After initializing the interfaces and "Hello World" is send to the serial port.
In a period of a second port pin D7 is toggled and sample data are send to the 
serial port. These sample data contain an index, analog data input, digital port 
inputs and an interrupt counter.
*/
{
	char Text[64];
	int32_t Temperature;
	int32_t a1 ;
	int32_t a0;		
	uint16_t iceTemp;
	uint16_t difference;
	uint16_t boilingTemp;
	
	
	
	InitialiseHardware(); 
	sprintf( Text,"\r\nPut sensor in ice water and press button\r\n");
	uart_puts (Text); _delay_ms(1000);
	while(ReadPortD(3));
	
	iceTemp = ReadChannel(6);
		
	//sprintf( Text,"\r\n Value is %d\r\n", iceTemp);
	//uart_puts (Text); _delay_ms(1000);
		
	
	
	sprintf( Text,"\r\nPut sensor in boiling water and press button\r\n");
	uart_puts (Text); _delay_ms(1000);
	
	while(ReadPortD(4));

	boilingTemp = ReadChannel(6);
		
	//sprintf( Text,"\r\n Value is %d\r\n", boilingTemp);
	//uart_puts (Text); _delay_ms(1000);
		
	
	
	difference = boilingTemp - iceTemp ;	
	a1 = 100000/difference;
	a0 = -a1*iceTemp;
	

	while(1)
	{
		
	//sprintf( Text,"\r\na1: %ld, a0:%ld  \r\n",a1,a0);
	
	//uart_puts (Text); _delay_ms(1000);
	
	Temperature = a1*ReadChannel(6)+a0;

	
	sprintf( Text,"\r\nTemperature = %04ld degC, \r\n",Temperature/100);
	
	Text[20] = Text[19];
	Text[19] = '.';
	
	uart_puts (Text); _delay_ms(1000);
	}
	
	
	/*while(1)
    {
		//TogglePortD(7);
		index++;
		
		//ADCValue=ReadChannel(6);
		_delay_ms(100);
		//mappedValue = (ADCValue*5);
	
		
	
		
		//sprintf( Text,"Temperature: %d ADCValue: %d MappedValue:%d Port3:%d Port4 :%d \r\n",Temperature,ADCValue,mappedValue,ReadPortD(3),ReadPortD(4));
		//uart_puts (Text); _delay_ms(1000);
    }*/
}

ISR(TIMER0_COMP_vect)
/*
Interrupt service routine for timer 0 interrupt.
*/
{
	intnum++;
}