# Acceleration-Measurement-using-ATmega32-Microcontroller-and-ADXL-335-Accelerometer
This project is a real-time application where the height of the floors was measured in an elevator. The experiment was carried out from the ground floor to the second floor. Multiple trips in the elevator were conducted to ensure data accuracy by comparing each trip and taking the arithmetic mean of all the trips.

All hardware works as a standalone unit including the Atmega32 microcontroller, test circuit, acceleration sensor (ADXL355) with the micro SD card and two 6-volt batteries that supplies +6 volts and -6 volts. The test should be taped firmly with a rectangular wooden block in order to get proper measurements and to do proper calibration after each trip. For data recording the RS232 to micro SD converter. 
As the standalone unit power on the received serial data will start logging on the micro SD card. 

## Measured Data
The original measured data is given below;

| <img src="./Images/Original data of 4 elevator trips.JPG"> |
|:--:| 
| *Original data of 4 elevator trips* |

| <img src="./Images/Single Trip.JPG"> |
|:--:| 
| *Single Trip* |

Above figure shows the behavior of the acceleration data.
a. This is the acceleration due to calibration of sensor in horizontal direction.
b. This is the acceleration due to the 90 degree tilt of sensor in vertical direction. The vertical line shows the 90 degree shift of the acceleration sensor.
c. Acceleration start increase due to the moving of elevator in the upward direction.
d. Acceleration due to the moving of elevator in the upward direction with constant velocity.
e. Acceleration start decrease when the elevator reaches the second floor.
f. Acceleration when the elevator stops for a short time on second floor.
g. Deceleration due to the moving of elevator in the downward direction.
h. Acceleration due to the moving of elevator in the downward direction with constant velocity.
i. Acceleration start increase when the elevator reaches the ground floor.
j. Elevator stops on ground floor.
k. Again this is the acceleration due to calibration of sensor in horizontal direction from vertical direction.

| <img src="./Images/Trip 2 measured acceleration in ADC format.JPG"> |
|:--:| 
| *Trip 2 measured acceleration in ADC format* |

| <img src="./Images/Trip 2 acceleration in msec2.JPG"> |
|:--:| 
| *Trip 2 acceleration in m/sec²* |

| <img src="./Images/Acceleration with removed +1g offset.JPG"> |
|:--:| 
| *Acceleration with removed +1g offset* |

| <img src="./Images/Acceleration from Ground floor to 2nd floor.JPG"> |
|:--:| 
| *Acceleration from Ground floor to 2nd floor* |

| <img src="./Images/Velocity from ground floor to second floor.JPG"> |
|:--:| 
| *Velocity from ground floor to second floor* |

| <img src="./Images/Displacement from ground floor to 2nd floor.JPG"> |
|:--:| 
| *Displacement from ground floor to 2nd floor* |


