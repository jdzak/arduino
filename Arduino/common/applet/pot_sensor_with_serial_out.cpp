#include "WProgram.h"
void setup();
void loop();
void * operator new(size_t size);
void operator delete(void * ptr);
class Arduino {
  enum Sensor {LEFT = 0, RIGHT = 1};
  
  public:
    int leftSensor() { return analogRead(LEFT); }
    int rightSensor() { return analogRead(RIGHT); }
};

class DataPacket {
  int leftValue, rightValue;
  
  public:
    DataPacket(int left, int right) {
      leftValue = left;
      rightValue = right;
    }
    
    const char* to_csv() { return leftValue + "," + rightValue; }
};

Arduino * arduino;
DataPacket * packet;
void setup() { 
  Serial.begin(9600);
  arduino = new Arduino;
}

void loop() {
/*  packet = 
    new DataPacket( 
       arduino->leftSensor(), 
       arduino->rightSensor() 
    );
*/

  Serial.println(arduino->leftSensor());
  
  //Serial.print(arduino->leftSensor());
  //Serial.print(",")
  //Serial.println(arduino->rightSensor());
  //Serial.print(packet->to_csv);
}
#include <stdlib.h>
/*
__extension__ typedef int __guard __attribute__((mode (__DI__)));

int __cxa_guard_acquire(__guard *g) {return !*(char *)(g);};
void __cxa_guard_release (__guard *g) {*(char *)g = 1;};
void __cxa_guard_abort (__guard *) {};

*/

void * operator new(size_t size);
void operator delete(void * ptr);

void * operator new(size_t size)
{
  return malloc(size);
}

void operator delete(void * ptr)
{
  free(ptr);
}
 

int main(void)
{
	init();

	setup();
    
	for (;;)
		loop();
        
	return 0;
}

