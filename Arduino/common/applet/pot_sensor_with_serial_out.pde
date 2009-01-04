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
