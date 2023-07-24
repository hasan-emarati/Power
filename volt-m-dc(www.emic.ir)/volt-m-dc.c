/************  www.emic.ir  ************/

#include <mega16a.h>
#include <delay.h>
#include <alcd.h>
#include <stdio.h>             // sprintf ÈÑÇí ÇÓÊİÇÏå ÇÒ ÊÇÈÚ stdio İÑÇÎæÇäí ˜ÊÇÈÎÇäå //
#define ADC_VREF_TYPE ((0<<REFS1) | (0<<REFS0) | (0<<ADLAR))   /* ÇíÌÇÏ ãí ÔæäÏ adc ˜å ÊæÓØ ÎæÏ ˜Ïæíä ÈÇ İÚÇáÓÇÒí adc ÇÒ ÎØ 7 ÊÇ 16 ÏÓÊæÑÇÊ ãÑÈæØ Èå */
unsigned int read_adc(unsigned char adc_input)
{
ADMUX=adc_input | ADC_VREF_TYPE;
delay_us(10);
ADCSRA|=(1<<ADSC);
while ((ADCSRA & (1<<ADIF))==0);
ADCSRA|=(1<<ADIF);
return ADCW;
}

void main(void)
{
 float i , volt , voltage ; 
 unsigned char lcd[16];

DDRA=(0<<DDA7) | (0<<DDA6) | (0<<DDA5) | (0<<DDA4) | (0<<DDA3) | (0<<DDA2) | (0<<DDA1) | (0<<DDA0);
PORTA=(0<<PORTA7) | (0<<PORTA6) | (0<<PORTA5) | (0<<PORTA4) | (0<<PORTA3) | (0<<PORTA2) | (0<<PORTA1) | (0<<PORTA0);
DDRC=(1<<DDC7) | (1<<DDC6) | (1<<DDC5) | (1<<DDC4) | (1<<DDC3) | (1<<DDC2) | (1<<DDC1) | (1<<DDC0);
PORTC=(0<<PORTC7) | (0<<PORTC6) | (0<<PORTC5) | (0<<PORTC4) | (0<<PORTC3) | (0<<PORTC2) | (0<<PORTC1) | (0<<PORTC0);

ADMUX=ADC_VREF_TYPE;              /* ˜å ÈÇ ÊæÌå Èå ÊäÙíãÇÊ ãÇ ÏÑ ãÍíØ ˜ÏæíÒÇÑÏ ÇíÌÇÏ ãí ÔæäÏ adc ÇÒ ÎØ 28 ÊÇ 30 ÑÌíÓÊÑåÇí ãÑÈæØ Èå */
ADCSRA=(1<<ADEN) | (0<<ADSC) | (0<<ADATE) | (0<<ADIF) | (0<<ADIE) | (1<<ADPS2) | (0<<ADPS1) | (1<<ADPS0);
SFIOR=(0<<ADTS2) | (0<<ADTS1) | (0<<ADTS0);

lcd_init(16);

while (1)
      {
      i=read_adc(0);                // i ÎæÇäÏä ÚÏÏí Èíä 0 ÊÇ 1023 ˜å äÔÇä ÏåäÏå ãŞÏÇÑ æáÊÇ ÇäÇáæ Ñæí Çä íä ãí˜Ñæ ÇÓÊ æ ÑíÎÊä Çä ÏÑ ãÊÛíÑ //
      volt=(i*5)/1023 ;             // ÏÓÊæÑ ÑæÈÑæ ÚÏÏ ÎæÇäÏå ÔÏå Èíä 0 ÊÇ 1023 ÑÇ ÏÑ ÈÇÒå í 0 ÊÇ 5 ÊÈÏíá ãí ˜äÏ //   
       /* ÇÒ ÇäÌÇíí ˜å ÈÇÒå í ÇäÏÇÒå íÑí æáÊÇ ãÇ ÈíÔ ÇÒ 0 ÊÇ 5 æáÊ ÇÓÊ ãÇ ÈÇ ÇÓÊİÇÏå ÇÒ ÊŞÓíã ãŞÇæãÊí æáÊÇ ÑÇ ˜ÇåÔ ÏÇÏå Çíã ÊÇ ÈÊæÇäíã ÈÑÇí ÇäÏÇÒå íÑí Èå ãí˜Ñæ ÈÏåíã */
      voltage=(volt*10)+volt ;         /*ØÈŞ ÊæÖíÍ ÈÇáÇ ãÇ æáÊÇí ÑÇ ˜å ˜ÇåÔ ÏÇÏå Çíã ÈÇ ÇÓÊİÇÏå ÇÒ ÏÓÊæÑ ÑæÈÑæ ÏæÈÇÑå Èå ÍÇáÊ Çæá ÈÑãíÑÏÇäíã*/  
      sprintf(lcd,"voltage=%2.2f",voltage);        // LCD ÈÑÇí äãÇíÔ Ñæí lcd ÊÈÏíá ãŞÇÏíÑ æáÊÇ Èå ÑÔÊå Çí ÇÒ ˜ÇÑÇ˜ÊÑ æ ĞÎíÑå Çä ÏÑ ãÊÛíÑ //
      lcd_gotoxy(0,0);
      lcd_puts(lcd);             // ĞÎíÑå ÔÏå ÇäÏ lcd äãÇíÔ ãŞÇÏíÑ æáÊÇ ˜å Èå ÕæÑÊ ˜ÇÑÇ˜ÊÑ ÏÑ ãÊÛíÑ //
      lcd_gotoxy(13,0);
      lcd_putsf("V");            // ÈÚÏ ÇÒ æáÊÇ LCD Ñæí V äæÔÊä ˜ÇÑÇ˜ÊÑ //
      delay_ms(500);     
      }
}
