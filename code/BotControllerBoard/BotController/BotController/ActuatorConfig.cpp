
/*
 * ActuatorConfig.cpp
 *
 * Created: 07.06.2016 14:06:10
 *  Author: JochenAlt
 */ 


#include "Arduino.h"
#include "ActuatorConfig.h"
#include "setup.h"
#include "BotMemory.h"
#include "setup.h"
void RotaryEncoderConfig::print() {
	Serial.print(F("EncoderConf("));
	printActuator(id);
	Serial.print(F("){"));

	Serial.print(F("null="));
	Serial.print(nullAngle,1);
	Serial.println(F("}"));
}

void ServoConfig::print() {
	Serial.print(F("ServoConf("));
	printActuator(id);
	Serial.print(F(") {"));

	Serial.print(F(") {"));
	Serial.print(F("null="));
	Serial.print(nullAngle,1);
	Serial.print(F(" maxAngle="));
	Serial.print(maxAngle,1);
	Serial.print(F(" minAngle="));
	Serial.print(minAngle,1);
	Serial.println(F("}"));
}


void StepperConfig::print() {
	Serial.print(F("StepperConf("));
	printActuator(id);
	Serial.print(F(") {"));

	Serial.print(F(" maxAngle="));
	Serial.print(maxAngle,1);
	Serial.print(F(" minAngle="));
	Serial.print(minAngle,1);

	Serial.print(F(" degreePerSteps="));
	Serial.print(degreePerMicroStep);
	Serial.print(F(" maxStepRate="));
	Serial.print(maxStepRatePerSecond);

	Serial.println(F("}"));
}


void ActuatorConfigurator::print() {
	Serial.print(F("ActuatorConf("));
	printActuator(id);
	Serial.print(F(")"));
	Serial.println();	
	switch (actuatorType) {
		case SERVO_TYPE:
			Serial.print(F("   "));
			config.servoArm.servo.print();
			break;
		case STEPPER_ENCODER_TYPE:
			Serial.print(F("   "));
			config.stepperArm.stepper.print();
			Serial.print(F("   "));
			config.stepperArm.encoder.print();
			break;
		case NO_ACTUATOR:
			Serial.print(F("none."));
			break;
	}
}

void ActuatorConfigurator::setDefaults() {
	// Gripper (herkulex Servo)
	uint8_t actuatorNo = 0;
	memory.persMem.armConfig[actuatorNo].actuatorType = SERVO_TYPE;
	memory.persMem.armConfig[actuatorNo].id = GRIPPER;
	memory.persMem.armConfig[actuatorNo].config.servoArm.servo.id = GRIPPER;
	memory.persMem.armConfig[actuatorNo].config.servoArm.servo.nullAngle = 0.0;
	memory.persMem.armConfig[actuatorNo].config.servoArm.servo.minAngle= 0.0;
	memory.persMem.armConfig[actuatorNo].config.servoArm.servo.maxAngle= 60.0;
	actuatorNo++;
	
	// Hand (herkulex Servo)
	memory.persMem.armConfig[actuatorNo].actuatorType = SERVO_TYPE;
	memory.persMem.armConfig[actuatorNo].id = HAND;
	memory.persMem.armConfig[actuatorNo].config.servoArm.servo.id = HAND;
	memory.persMem.armConfig[actuatorNo].config.servoArm.servo.nullAngle = 0.0;
	memory.persMem.armConfig[actuatorNo].config.servoArm.servo.minAngle= -120.0;
	memory.persMem.armConfig[actuatorNo].config.servoArm.servo.maxAngle= +120.0;
	actuatorNo++;
	
	// Wrist (stepper/Encoder)
	memory.persMem.armConfig[actuatorNo].actuatorType = STEPPER_ENCODER_TYPE;
	memory.persMem.armConfig[actuatorNo].id = WRIST;
	memory.persMem.armConfig[actuatorNo].config.stepperArm.encoder.id = WRIST;
	memory.persMem.armConfig[actuatorNo].config.stepperArm.stepper.id = WRIST;
	memory.persMem.armConfig[actuatorNo].config.stepperArm.stepper.minAngle= -110.0;
	memory.persMem.armConfig[actuatorNo].config.stepperArm.stepper.maxAngle= +110.0;
	memory.persMem.armConfig[actuatorNo].config.stepperArm.encoder.nullAngle= 73.7;
	actuatorNo++;
	
	
	// Ellbow (stepper/Encoder)
	memory.persMem.armConfig[actuatorNo].actuatorType = STEPPER_ENCODER_TYPE;
	memory.persMem.armConfig[actuatorNo].id = ELLBOW;
	memory.persMem.armConfig[actuatorNo].config.stepperArm.encoder.id = ELLBOW;
	memory.persMem.armConfig[actuatorNo].config.stepperArm.stepper.id = ELLBOW;
	memory.persMem.armConfig[actuatorNo].config.stepperArm.stepper.minAngle= -110.0;
	memory.persMem.armConfig[actuatorNo].config.stepperArm.stepper.maxAngle= +110.0;
	memory.persMem.armConfig[actuatorNo].config.stepperArm.encoder.nullAngle= 0;
	actuatorNo++;
	
	
	memory.persMem.armConfig[actuatorNo++].actuatorType = NO_ACTUATOR;	 // Forearm
	memory.persMem.armConfig[actuatorNo++].actuatorType = NO_ACTUATOR;   // upperarm
	memory.persMem.armConfig[actuatorNo++].actuatorType = NO_ACTUATOR;   // shoulder
	memory.persMem.armConfig[actuatorNo++].actuatorType = NO_ACTUATOR;   // hip
}