#include <mega16a.h>
// Declare your global variables here

#include <delay.h>

#include <spi.h>
// SPI functions

void main(void)
{
      // Declare your local variables here
    
      int SendData = 0;
      int Buffer = 0;
      int i=0;

      // Input/Output Ports initialization
      // Port A initialization
      // Function: Bit7=In Bit6=In Bit5=In Bit4=In Bit3=In Bit2=In Bit1=In Bit0=In
      DDRA = (0 << DDA7) | (0 << DDA6) | (0 << DDA5) | (0 << DDA4) | (1 << DDA3) | (0 << DDA2) | (1 << DDA1) | (1 << DDA0);
      // State: Bit7=T Bit6=T Bit5=T Bit4=T Bit3=T Bit2=T Bit1=T Bit0=T
      PORTA = (0 << PORTA7) | (0 << PORTA6) | (0 << PORTA5) | (0 << PORTA4) | (0 << PORTA3) | (0 << PORTA2) | (0 << PORTA1) | (0 << PORTA0);

      // Port B initialization
      // Function: Bit7=Out Bit6=In Bit5=Out Bit4=Out Bit3=In Bit2=In Bit1=In Bit0=In
      DDRB = (1 << DDB7) | (0 << DDB6) | (1 << DDB5) | (1 << DDB4) | (1 << DDB3) | (0 << DDB2) | (0 << DDB1) | (0 << DDB0);
      // State: Bit7=0 Bit6=T Bit5=0 Bit4=0 Bit3=T Bit2=T Bit1=T Bit0=T
      PORTB = (0 << PORTB7) | (0 << PORTB6) | (0 << PORTB5) | (0 << PORTB4) | (0 << PORTB3) | (0 << PORTB2) | (0 << PORTB1) | (0 << PORTB0);

      // Port C initialization
      // Function: Bit7=In Bit6=In Bit5=In Bit4=In Bit3=In Bit2=In Bit1=In Bit0=In
      DDRC = (0 << DDC7) | (0 << DDC6) | (0 << DDC5) | (0 << DDC4) | (0 << DDC3) | (0 << DDC2) | (0 << DDC1) | (0 << DDC0);
      // State: Bit7=T Bit6=T Bit5=T Bit4=T Bit3=T Bit2=T Bit1=T Bit0=T
      PORTC = (0 << PORTC7) | (0 << PORTC6) | (0 << PORTC5) | (0 << PORTC4) | (0 << PORTC3) | (0 << PORTC2) | (0 << PORTC1) | (0 << PORTC0);

      // Port D initialization
      // Function: Bit7=In Bit6=In Bit5=In Bit4=In Bit3=In Bit2=In Bit1=In Bit0=In
      DDRD = (0 << DDD7) | (0 << DDD6) | (0 << DDD5) | (0 << DDD4) | (0 << DDD3) | (0 << DDD2) | (0 << DDD1) | (0 << DDD0);
      // State: Bit7=T Bit6=T Bit5=T Bit4=T Bit3=T Bit2=T Bit1=T Bit0=T
      PORTD = (0 << PORTD7) | (0 << PORTD6) | (0 << PORTD5) | (0 << PORTD4) | (0 << PORTD3) | (0 << PORTD2) | (0 << PORTD1) | (0 << PORTD0);

      // Timer(s)/Counter(s) Interrupt(s) initialization
      TIMSK = (0 << OCIE2) | (0 << TOIE2) | (0 << TICIE1) | (0 << OCIE1A) | (0 << OCIE1B) | (0 << TOIE1) | (0 << OCIE0) | (0 << TOIE0);

      // SPI initialization
      // SPI Type: Master
      // SPI Clock Rate: 2000.000 kHz
      // SPI Clock Phase: Cycle Start
      // SPI Clock Polarity: Low
      // SPI Data Order: MSB First
      SPCR = (0 << SPIE) | (1 << SPE) | (0 << DORD) | (1 << MSTR) | (0 << CPOL) | (0 << CPHA) | (0 << SPR1) | (0 << SPR0);
      SPSR = (0 << SPI2X);

      while (1)
      {
            PORTB.3 = 0;
            for (i=0 ; i<128 ; i++)
            {
                  spi(0);
                  spi(i);
                  delay_ms(10);
            }
            for (i=0 ; i<128 ; i--)
            {
                  spi(0);
                  spi(i);
                  delay_ms(10);
            }
            Buffer = i ;
            // key
            SendData = Buffer;
            spi(SendData);
            delay_ms(250);
      };
}
