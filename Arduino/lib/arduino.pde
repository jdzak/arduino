class Arduino {
  //enum Pins {LEFT = 0, RIGHT = 1};

  public:
    Arduino() {
      Serial.begin(9600)
    }
  
    void sendState() {
      // TODO: Serial.send(new ArduinoState())
      Arduino* state = state();
      Serial.send(state->csv);
    }
  
    /* Digital Pins */
    int digital_pin_0() { return digitalRead(0); }
    int digital_pin_1() { return digitalRead(1); }
    int digital_pin_2() { return digitalRead(2); }
    int digital_pin_3() { return digitalRead(3); }
    int digital_pin_4() { return digitalRead(4); }
    int digital_pin_5() { return digitalRead(5); }
    int digital_pin_6() { return digitalRead(6); }
    int digital_pin_7() { return digitalRead(7); }
    int digital_pin_8() { return digitalRead(8); }
    int digital_pin_9() { return digitalRead(9); }
    int digital_pin_10() { return digitalRead(10); }
    int digital_pin_11() { return digitalRead(11); }
    int digital_pin_12() { return digitalRead(12); }
    int digital_pin_13() { return digitalRead(13); }
    
    /* Analog Pins */
    int analog_pin_0() { return analogRead(0); }
    int analog_pin_1() { return analogRead(1); }
    int analog_pin_2() { return analogRead(2); }
    int analog_pin_3() { return analogRead(3); }
    int analog_pin_4() { return analogRead(4); }
    int analog_pin_5() { return analogRead(5); }
    
  private:
    ArduinoState* state() {
    return new ArduinoState(
      digital_pin_0(),
      digital_pin_1(),
      digital_pin_2(),
      digital_pin_3(),
      digital_pin_4(),
      digital_pin_5(),
      digital_pin_6(),
      digital_pin_7(),
      digital_pin_8(),
      digital_pin_9(),
      digital_pin_10(),
      digital_pin_11(),
      digital_pin_12(),
      digital_pin_13(),
      analog_pin_0(),
      analog_pin_1(),
      analog_pin_2(),
      analog_pin_3(),
      analog_pin_4(),
      analog_pin_5()
    );
  }
};
