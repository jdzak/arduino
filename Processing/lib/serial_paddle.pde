import processing.serial.*;

int linefeed = 10;
Serial myPort;

float leftPaddle, leftPaddleX;
int leftPaddleMinimum = 0;
int leftPaddleMaximum = 1024;

void setup() {
  size(800, 600);
  
  println(Serial.list());
  
  myPort = new Serial(this, Serial.list()[0], 9600);
  
  myPort.bufferUntil(linefeed);
  
  leftPaddle = height / 2;
  leftPaddleX = 50;
  noStroke();
}

void draw() { 
  background(0);
  rect(leftPaddleX, leftPaddle, 20, 100);
}
  
void serialEvent(Serial myPort) {
  float leftRange = leftPaddleMaximum - leftPaddleMinimum;
  String myString = myPort.readStringUntil(linefeed);

  if (myString != null) {
    myString = trim(myString);
    println("Sensor 0: " + myString);
    float temp = int(myString);
    leftPaddle = height * ( temp - leftPaddleMinimum ) / leftRange;
  }  
}
