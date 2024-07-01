# Acceleration-Measurement-using-ATmega32-Microcontroller-and-ADXL-335-Accelerometer
This project is a real-time application where the height of the floors was measured in an elevator. The experiment was carried out from the ground floor to the second floor. Multiple trips in the elevator were conducted to ensure data accuracy by comparing each trip and taking the arithmetic mean of all the trips.

All hardware works as a standalone unit including the Atmega32 microcontroller, test circuit, acceleration sensor (ADXL355) with the micro SD card and two 6-volt batteries that supplies +6 volts and -6 volts. The test should be taped firmly with a rectangular wooden block in order to get proper measurements and to do proper calibration after each trip. For data recording the RS232 to micro SD converter. 
As the standalone unit power on the received serial data will start logging on the micro SD card. 

## Measured Data
The original measured data is given below;

| <img src="./Images/Original data of 4 elevator trips.JPG"> |
|:--:| 
| *Figure 1: Original data of 4 elevator trips* |

| <img src="./Images/Single Trip.JPG"> |
|:--:| 
| *Figure 2: Single Trip* |

The above figure shows the behavior of the acceleration data for the third trip.

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

## Data Analysis
To do the data analysis on the data from the conduction of the experiment only one trip of the elevator from the ground floor to the second floor (both upward and downward directions) is enough to consider. Here, I do the data analysis on trip 2.

| <img src="./Images/Trip 2 measured acceleration in ADC format.JPG"> |
|:--:| 
| *Figure 3: Trip 2 measured acceleration in ADC format* |

The above-given figure depicts the acceleration during trip 2 of the elevator from the ground floor to the second floor (both upward and downward directions). However, the measured acceleration values are in the analog to digital converter's (ADC) format. Therefore, the acceleration must be converted into the physical SI unit (m/sec²).

The output voltage of the test circuit is proportional to the acceleration measured by the acceleration sensor. The data logger stores a time series of the analog to digital converter's (ADC) output (𝑑<sub>𝑎𝑐𝑐</sub>). The following equation is used to calculate the acceleration:

<p align="center"><b>a = 𝑘<sub>1</sub> . 𝑑<sub>𝑎𝑐𝑐</sub> + 𝑘<sub>0</sub>  (equation 1)<b></p> 

Where:
- 𝑎 = Acceleration
- 𝑘<sub>0</sub> = Offset Coefficient
- 𝑘<sub>1</sub> = Proportionality Coefficient
- 𝑑<sub>𝑎𝑐𝑐</sub> = Analog to digital converter output

Now, for the calculation of the values of the coefficient 𝑘<sub>0</sub> and 𝑘<sub>1</sub>, requires the acceleration sensor (ADXL355) horizontal calibration value (0𝑔) and vertical calibration value (+1𝑔).

For horizontal calibration value (0𝑔), the value of the 𝑑<sub>𝑎𝑐𝑐</sub> is 2030 (from Figure 1). Hence, the equation 1 becomes;

<p align="center"><b>0 m/sec² = 𝑘<sub>1</sub> . 2140 + 𝑘<sub>0</sub>  (equation 2)<b></p> 

Similarly, for vertical calibration value (+1𝑔), the value of the 𝑑<sub>𝑎𝑐𝑐</sub> is 2030 (from Figure 1). Hence, the equation 11 becomes;

<p align="center"><b>9.81 m/sec² = 𝑘<sub>1</sub> . 7600 + 𝑘<sub>0</sub>  (equation 3)<b></p> 

Solve, equations 2 and 3 simultaneously in order to get the value of 𝑘<sub>0</sub> and 𝑘<sub>1</sub>.

<p align="center"><b>𝑘<sub>0</sub> = -3.845 m/sec² <b></p> 

and;

<p align="center"><b>𝑘<sub>1</sub> = 0.0018 m/sec² <b></p> 

Thus, the equation 1 becomes; 

<p align="center"><b>𝑎 m/sec² = 0.0018 m/sec² . 𝑑<sub>𝑎𝑐𝑐</sub> - 3.845 m/sec² <b></p>

| <img src="./Images/Trip 2 acceleration in msec2.JPG"> |
|:--:| 
| *Figure 4: Trip 2 acceleration in m/sec²* |

The above acceleration is in m/sec² but during the calibration of the acceleration sensor from the horizontal
direction (0𝑔) to the vertical calibration direction (+1𝑔), the 9.81 m/sec² that is +1𝑔 is added into the
acceleration. So, +1𝑔 should be subtracted from the acceleration. Calibration is done to take
reference for the sensor.

| <img src="./Images/Acceleration with removed +1g offset.JPG"> |
|:--:| 
| *Figure 5: Acceleration with removed +1g offset* |

Figure 5 shows the acceleration after subtraction of (+1𝑔) the 9.81 m/sec² due to calibration.

Now, velocity is required in order to calculate the displacement. In order to calculate the velocity, the acceleration is required for the one direction. Here, acceleration is taken for the upward movement of the elevator (from the ground floor to the second floor). Below given figure shows the acceleration from the ground floor to the second floor during trip 2.

| <img src="./Images/Acceleration from Ground floor to 2nd floor.JPG"> |
|:--:| 
| *Figure 6: Acceleration from Ground floor to 2nd floor* |


Now the calculated velocity has the drift error because of the integration also known as temporal drift. Therefore, Figure 7 shows the calculated velocity, drift error, and velocity after the correction of the drift error.

| <img src="./Images/Velocity from ground floor to second floor.JPG"> |
|:--:| 
| *Figure 7: Velocity from ground floor to second floor* |

Finally, the height (displacement) from the ground floor to the 2nd floor can be calculated. Figure 8 shows the displacement.

| <img src="./Images/Displacement from ground floor to 2nd floor.JPG"> |
|:--:| 
| *Figure 8: Displacement from ground floor to 2nd floor* |




