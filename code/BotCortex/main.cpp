#include <Arduino.h>
#include <i2c_t3.h>
#include "watchdog.h"
#include "ams_as5048b.h"
#include "PatternBlinker.h"
#include <AccelStepper.h>
#include <I2CPortScanner.h>
#include <pins.h>
#include "config.h"
#include "hostCommunication.h"
#include "Controller.h"
#include "BotMemory.h"

// global variables declared in pins.h
HardwareSerial* cmdSerial = &Serial5;
HardwareSerial* logger = &Serial4;
HardwareSerial* servoComm = &Serial1;

i2c_t3* Wires[2] = { &Wire, &Wire1 };

static uint8_t IdlePattern[2] = { 0b10000000, 0b00000000, };				// boring
static uint8_t DefaultPattern[3] = { 0b11001000, 0b00001100, 0b10000000 };	// nice!
static uint8_t LEDOnPattern[1] = { 0b11111111 };
static uint8_t LEDOffPattern[1] = { 0b00000000 };
PatternBlinker ledBlinker(LED_PIN, 100);

void setLED(bool onOff) {
	// LEDs blinks a nice pattern during normal operations
	if (onOff)
		ledBlinker.set(LEDOnPattern,sizeof(LEDOnPattern));
	else
		ledBlinker.set(LEDOffPattern,sizeof(LEDOffPattern));
}

void setLEDPattern() {
	if (controller.isEnabled())
		ledBlinker.set(DefaultPattern,sizeof(DefaultPattern));
	else
		ledBlinker.set(IdlePattern,sizeof(IdlePattern));
}

TimePassedBy 	motorKnobTimer;		// used for measuring sample rate of motor knob
TimePassedBy 	encoderTimer;		// timer for encoder measurements

void logPinAssignment() {
	logger->println("--- pin assignment");
	logger->print("knob                = ");
	logger->println(MOTOR_KNOB_PIN);
	logger->print("Power Stepper       = ");
	logger->println(POWER_SUPPLY_STEPPER_PIN);
	logger->print("Power servo         = ");
	logger->println(POWER_SUPPLY_SERVO_PIN);
	logger->print("LED                 = ");
	logger->println(LED_PIN);

	logger->print("Cmd     RX,TX       = (");
	logger->print(SERIAL_CMD_RX);
	logger->print(",");
	logger->print(SERIAL_CMD_RX);
	logger->println(")");
	logger->print("Logger  RX,TX       = (");
	logger->print(SERIAL_LOG_RX);
	logger->print(",");
	logger->print(SERIAL_LOG_RX);
	logger->println(")");
	logger->print("Herkulex RX,TX      = (");
	logger->print(HERKULEX_RX);
	logger->print(",");
	logger->print(HERKULEX_TX);
	logger->println(")");

	logger->print("Sensor0  SCL,SDA    = (");
	logger->print(SENSOR0_SCL);
	logger->print(",");
	logger->print(SENSOR0_SDA);
	logger->println(")");

	logger->print("Sensor1  SCL,SDA    = (");
	logger->print(SENSOR1_SCL);
	logger->print(",");
	logger->print(SENSOR1_SDA);
	logger->println(")");

	logger->print("Wrist En,Dir,CLK    = (");
	logger->print(WRIST_EN_PIN);
	logger->print(",");
	logger->print(WRIST_DIR_PIN);
	logger->print(",");
	logger->print(WRIST_CLK_PIN);
	logger->println(")");

	logger->print("Forearm En,Dir,CLK  = (");
	logger->print(FOREARM_EN_PIN);
	logger->print(",");
	logger->print(FOREARM_DIR_PIN);
	logger->print(",");
	logger->print(FOREARM_CLK_PIN);
	logger->println(")");

	logger->print("Elbow En,Dir,CLK    = (");
	logger->print(ELBOW_EN_PIN);
	logger->print(",");
	logger->print(ELBOW_DIR_PIN);
	logger->print(",");
	logger->print(ELBOW_CLK_PIN);
	logger->println(")");

	logger->print("Upperarm En,Dir,CLK = (");
	logger->print(UPPERARM_EN_PIN);
	logger->print(",");
	logger->print(UPPERARM_DIR_PIN);
	logger->print(",");
	logger->print(UPPERARM_CLK_PIN);
	logger->println(")");

	logger->print("Hip En,Dir,CLK      = (");
	logger->print(HIP_EN_PIN);
	logger->print(",");
	logger->print(HIP_DIR_PIN);
	logger->print(",");
	logger->print(HIP_CLK_PIN);
	logger->println(")");
}

// the setup routine runs once when you press reset:
void setup() {

	// until blinking led is initialized switch on the LED.
	pinMode(LED_PIN, OUTPUT);
	digitalWrite(LED_PIN, HIGH); // switch LED on during setup

	// disable power supply and enable/disable switch of all motors, especially of steppers
	// to avoid ticks during powering on.
	pinMode(POWER_SUPPLY_SERVO_PIN, OUTPUT);
	digitalWrite(POWER_SUPPLY_SERVO_PIN, LOW);

	pinMode(POWER_SUPPLY_STEPPER_PIN, OUTPUT);
	digitalWrite(POWER_SUPPLY_STEPPER_PIN, LOW);

	// Cant use controller.disable, since this requires a completed setup
	for (int i = 0;i<MAX_STEPPERS;i++) {
		pinMode(stepperSetup[i].enablePIN,OUTPUT);
		digitalWrite(stepperSetup[i].enablePIN, LOW);
	}

	// establish serial output and say hello
	cmdSerial->begin(CONNECTION_BAUD_RATE);
	cmdSerial->println("WALTER's Cortex");
	cmdSerial->print(F(">"));
	// establish logging output
	logger->begin(CONNECTION_BAUD_RATE);
	logger->println("--- logging ---");
	logPinAssignment();

	// initialize I2C0 and I2C1
	Wires[0]->begin();
	Wires[1]->begin();

	// log all available devices
	logger->println("--- I2C lines");
	doI2CPortScan(F("I2C0"),Wires[0], logger);
	doI2CPortScan(F("I2C1"),Wires[1], logger);

	// initialize
	hostComm.setup();

	ledBlinker.set(DefaultPattern, sizeof(DefaultPattern));

	memory.setup();
	setWatchdogTimeout(2000);
}


void loop() {
	watchdogReset();
	ledBlinker.loop(millis());    // blink
	hostComm.loop(millis());
	controller.loop(millis());
	memory.loop(millis());
}
