/*
  arduino->digital_pin_0
  arduino->digital->0
  arduino->analog->0
*/

class ArduinoState {
  //enum Pins {LEFT = 0, RIGHT = 1};
  int digital_pins[15];
  int analog_pins[5];
  
  public:
    ArduinoState(d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, a1, a2, a3, a4, a5) {
      digital_pins[0] = d0;
      digital_pins[1] = d1;
      digital_pins[2] = d2;
      digital_pins[3] = d3;
      digital_pins[4] = d4;
      digital_pins[5] = d5;
      digital_pins[6] = d6;
      digital_pins[7] = d7;
      digital_pins[8] = d8;
      digital_pins[9] = d9; 
      digital_pins[0] = d10;
      digital_pins[0] = d11;
      digital_pins[0] = d12;
      digital_pins[0] = d13;
      analog_0 = a0;
      analog_1 = a1;
      analog_2 = a2;
      analog_3 = a3;
      analog_4 = a4;
      analog_5 = a5;
    }
    
    int digital_0() { return digital_0 };
    int digital_1() { return digital_1 };
    int digital_2() { return digital_2 };
    int digital_3() { return digital_3 };
    int digital_4() { return digital_4 };
    int digital_5() { return digital_5 };
    int digital_6() { return digital_6 };
    int digital_7() { return digital_7 };
    int digital_8() { return digital_8 };
    int digital_9() { return digital_9 };
    int digital_10() { return digital_10 };
    int digital_11() { return digital_11 };
    int digital_12() { return digital_12 };
    int digital_13() { return digital_13 };
    
    int analog_0() { return analog_0 };
    int analog_1() { return analog_1 };
    int analog_2() { return analog_2 };
    int analog_3() { return analog_3 };
    int analog_4() { return analog_4 };
    int analog_5() { return analog_5 };
};
