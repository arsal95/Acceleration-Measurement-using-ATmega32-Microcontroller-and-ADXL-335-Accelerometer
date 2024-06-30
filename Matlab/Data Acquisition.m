% Variables Initialize
l = length(dat);
fs = 100;   % Sampling frequency
fr = 10;    % Data recording frequency   
T = l/fr;
t = (0.1:1/fr:T)';

% Import and plot original data text file
dat=importdata('LOG00282.txt')
figure,
plot(t,dat);
grid on;
xlabel('Time (seconds)'), ylabel('Acceleration')
title('Acceleration vs Time (Original Data with 4 trips)')

% %Calculation for Trip1
% data_second_trip = dat(10:480);
% time_second_trip = t(10:480);
% 
% %Collect and Average Calibration data at 0g and 1g
% data_2_0g = data_second_trip(1:50);
% acc_2_0g_avg = mean(data_2_0g);
% 
% data_2_1g = data_second_trip(70:119);
% acc_2_1g_avg = mean(data_2_1g);
% 
% %Calculate k0 and k1 for repective Trip
% k1_2 = 9.8/(acc_2_1g_avg - acc_2_0g_avg);
% k0_2 = -k1_2*acc_2_0g_avg;
% 
% %Calculate Accleration by a = k1*d + k0
% acc_2_g = (k1_2*data_second_trip) + k0_2;
% 
% %Remove 1g offfset
% acc_2 = acc_2_g - 9.8;
% 
% %Caculate Velocity by integrating one trip upwards
% trip_2_up = acc_2(105:185);
% time_2_up = time_second_trip(105:185);
% 
% time_2_up = time_2_up - 10.9;
% vel_2 = cumtrapz(time_2_up, trip_2_up);
% 
% %Calculate the Drift
% time_2_drift = time_2_up(1:10);
% vel_2_drift = vel_2(1:10);
% 
% %Create a line that follows the drift
% drift_equation_2 = polyfit(time_2_drift, vel_2_drift,1);
% vel_2_cor = drift_equation_2(1)*time_2_up + drift_equation_2(2);
% 
% %Subtract the drift from the calculated velocity
% vel_2_corrected = vel_2 - vel_2_cor;
% 
% %Calculate Displacement by First trip
% displacement_2 = cumtrapz(time_2_up, vel_2_corrected);
% 
% %Plot for a single Trip in ADC units
% figure; 
% plot(time_first_trip, data_first_trip);
% grid on;
% xlabel('Time (seconds)'), ylabel('Acceleration')
% title('(Trip 1) Acceleration vs Time')
% 
% % %Plot for a single Trip in m/sec^2
% figure; 
% plot(time_first_trip, acc_1_g);
% grid on;
% xlabel('Time (seconds)'), ylabel('Acceleration (m/s^2)')
% title('(Trip 1) Acceleration vs Time in meter/second^2');
% 
% 
% %Plot for a single Trip with 1g offset removed
% figure; 
% plot(time_first_trip, acc_1);
% grid on;
% xlabel('Time (seconds)'), ylabel('Acceleration (meter/second^2)')
% title('(Trip1) Acceleration vs Time in m/s^2 with 1g Offset Removed');
% 
% 
% %Plot for a Upward Journey
% figure;
% plot(time_1_up, trip_1_up);
% grid on;
% xlabel('Time (seconds)'), ylabel('Acceleration (meter/second^2)')
% title('(Trip 1) Acceleration from Ground Floor to 2nd Floor');
% 
% % Velocity Plot with Drift
% figure;
% plot(time_1_up, vel_1, 'g');
% hold on;
% grid on;
% xlabel('Time (seconds)'), ylabel('Velocity (meter/second)')
% title('(Trip 1) Velocity from Ground Floor to 2nd Floor');
% plot(time_1_up, vel_1_cor,'r');
% hold on;
% plot(time_1_up, vel_1_corrected,'b');
% legend('Calculated Velocity', 'Drift Error', 'Velocity with Drift Removed');
% 
% % Displacement
% figure;
% plot(time_1_up, displacement_1);
% grid on;
% xlabel('Time (seconds)'), ylabel('Displacement (meter)')
% title('(Trip 1) Displacement from Ground Floor to 2nd Floor');
% 
% 
% % Velocity Displacement Acceleration
% figure;
% hold on;
% plot(time_1_up, trip_1_up, 'r');
% plot(time_1_up, vel_1_corrected, 'g');
% plot(time_1_up, displacement_1, 'b');
% grid on;
% xlabel('Time (seconds)'), ylabel('Displacement (meter)')
% title('(Trip 1) Acceleration, Velocity and Displacement vs Time');
% legend('Acceleration', 'Velocity', 'Displacement');
% hold off;

% %Calculation for Trip 2
% data_second_trip = dat(460:870);
% time_second_trip = t(460:870);
% 
% %Collect and Average Calibration data at 0g and 1g
% data_2_0g = data_second_trip(1:35);
% acc_2_0g_avg = mean(data_2_0g);
% 
% data_2_1g = data_second_trip(45:75);
% acc_2_1g_avg = mean(data_2_1g);
% 
% %Calculate k0 and k1 for repective Trip
% k1_2 = 9.8/(acc_2_1g_avg - acc_2_0g_avg);
% k0_2 = -k1_2*acc_2_0g_avg;
% 
% %Calculate Accleration by a = k1*d + k0
% acc_2_g = (k1_2*data_second_trip) + k0_2;
% 
% %Remove 1g offfset
% acc_2 = acc_2_g - 9.8;
% 
% %Caculate Velocity by integrating one trip upwards
% trip_2_up = acc_2(55:155);
% time_2_up = time_second_trip(55:155);
% 
% time_2_up = time_2_up - 50.9;
% vel_2 = cumtrapz(time_2_up, trip_2_up);
% 
% %Calculate the Drift
% time_2_drift = time_2_up(1:10);
% vel_2_drift = vel_2(1:10);
% 
% %Create a line that follows the drift
% drift_equation_2 = polyfit(time_2_drift, vel_2_drift,1);
% vel_2_cor = drift_equation_2(1)*time_2_up + drift_equation_2(2);
% 
% %Subtract the drift from the calculated velocity
% vel_2_corrected = vel_2 - vel_2_cor;
% 
% %Calculate Displacement by First trip
% displacement_2 = cumtrapz(time_2_up, vel_2_corrected);
% 
% %Plot for a single Trip in ADC units
% figure; 
% plot(time_second_trip, data_second_trip);
% grid on;
% xlabel('Time (seconds)'), ylabel('Acceleration')
% title('(Trip 2) Acceleration vs Time')
% 
% 
% % %Plot for a single Trip in m/sec^2
% figure; 
% plot(time_second_trip, acc_2_g);
% grid on;
% xlabel('Time (seconds)'), ylabel('Acceleration (m/s^2)')
% title('(Trip 2) Acceleration vs Time in meter/second^2');


% %Plot for a single Trip with 1g offset removed
% figure; 
% plot(time_second_trip, acc_2);
% grid on;
% xlabel('Time (seconds)'), ylabel('Acceleration (meter/second^2)')
% title('(Trip 2) Acceleration vs Time in m/s^2 with 1g Offset Removed');
% 
% 
% %Plot for a Upward Journey
% figure;
% plot(time_2_up, trip_2_up);
% grid on;
% xlabel('Time (seconds)'), ylabel('Acceleration (meter/second^2)')
% title('(Trip 2) Acceleration from Ground Floor to 2nd Floor');
% 
% % Velocity Plot with Drift
% figure;
% plot(time_2_up, vel_2, 'g');
% hold on;
% grid on;
% xlabel('Time (seconds)'), ylabel('Velocity (meter/second)')
% title('(Trip 2) Velocity from Ground Floor to 2nd Floor');
% plot(time_2_up, vel_2_cor,'r');
% hold on;
% plot(time_2_up, vel_2_corrected,'b');
% legend('Calculated Velocity', 'Drift Error', 'Velocity with Drift Removed');
% 
% % Displacement
% figure;
% plot(time_2_up, displacement_2);
% grid on;
% xlabel('Time (seconds)'), ylabel('Displacement (meter)')
% title('(Trip 2) Displacement from Ground Floor to 2nd Floor');
% 
% % Velocity Displacement Acceleration
% figure;
% hold on;
% plot(time_2_up, trip_2_up, 'r');
% plot(time_2_up, vel_2_corrected, 'g');
% plot(time_2_up, displacement_2, 'b');
% grid on;
% xlabel('Time (seconds)'), ylabel('Displacement (meter)')
% title('(Trip 2) Acceleration, Velocity and Displacement vs Time');
% legend('Acceleration', 'Velocity', 'Displacement');
% hold off;

% %Calculation for Trip 3
% data_third_trip = dat(860:1320);
% time_third_trip = t(860:1320);
% 
% %Collect and Average Calibration data at 0g and 1g
% data_3_0g = data_third_trip(1:35);
% acc_3_0g_avg = mean(data_3_0g);
% 
% data_3_1g = data_third_trip(45:75);
% acc_3_1g_avg = mean(data_3_1g);
% 
% %Calculate k0 and k1 for repective Trip
% k1_3 = 9.8/(acc_3_1g_avg - acc_3_0g_avg);
% k0_3 = -k1_3*acc_3_0g_avg;
% 
% %Calculate Accleration by a = k1*d + k0
% acc_3_g = (k1_3*data_third_trip) + k0_3;
% 
% %Remove 1g offfset
% acc_3 = acc_3_g - 9.8;
% 
% %Caculate Velocity by integrating one trip upwards
% trip_3_up = acc_3(70:180);
% time_3_up = time_third_trip(70:180);
% 
% time_3_up = time_3_up - 90.9;
% vel_3 = cumtrapz(time_3_up, trip_3_up);
% 
% %Calculate the Drift
% time_3_drift = time_3_up(1:10);
% vel_3_drift = vel_3(1:10);
% 
% %Create a line that follows the drift
% drift_equation_3 = polyfit(time_3_drift, vel_3_drift,1);
% vel_3_cor = drift_equation_3(1)*time_3_up + drift_equation_3(2);
% 
% %Subtract the drift from the calculated velocity
% vel_3_corrected = vel_3 - vel_3_cor;
% 
% %Calculate Displacement by First trip
% displacement_3 = cumtrapz(time_3_up, vel_3_corrected);
% 
% %Plot for a single Trip in ADC units
% figure; 
% plot(time_third_trip, data_third_trip);
% grid on;
% xlabel('Time (seconds)'), ylabel('Acceleration')
% title('(Trip 3) Acceleration vs Time')
% 
% 
% % %Plot for a single Trip in m/sec^2
% figure; 
% plot(time_third_trip, acc_3_g);
% grid on;
% xlabel('Time (seconds)'), ylabel('Acceleration (m/s^2)')
% title('(Trip 3) Acceleration vs Time in meter/second^2');
% 
% 
% %Plot for a single Trip with 1g offset removed
% figure; 
% plot(time_third_trip, acc_3);
% grid on;
% xlabel('Time (seconds)'), ylabel('Acceleration (meter/second^2)')
% title('(Trip 3) Acceleration vs Time in m/s^2 with 1g Offset Removed');
% 
% 
% %Plot for a Upward Journey
% figure;
% plot(time_3_up, trip_3_up);
% grid on;
% xlabel('Time (seconds)'), ylabel('Acceleration (meter/second^2)')
% title('(Trip 3) Acceleration from Ground Floor to 2nd Floor');
% 
% % Velocity Plot with Drift
% figure;
% plot(time_3_up, vel_3, 'g');
% hold on;
% grid on;
% xlabel('Time (seconds)'), ylabel('Velocity (meter/second)')
% title('(Trip 3) Velocity from Ground Floor to 2nd Floor');
% plot(time_3_up, vel_3_cor,'r');
% hold on;
% plot(time_3_up, vel_3_corrected,'b');
% legend('Calculated Velocity', 'Drift Error', 'Velocity with Drift Removed');
% 
% % Displacement
% figure;
% plot(time_3_up, displacement_3);
% grid on;
% xlabel('Time (seconds)'), ylabel('Displacement (meter)')
% title('(Trip 3) Displacement from Ground Floor to 2nd Floor');
% 
% % Velocity Displacement Acceleration
% figure;
% hold on;
% plot(time_3_up, trip_3_up, 'r');
% plot(time_3_up, vel_3_corrected, 'g');
% plot(time_3_up, displacement_3, 'b');
% grid on;
% xlabel('Time (seconds)'), ylabel('Displacement (meter)')
% title('(Trip 3) Acceleration, Velocity and Displacement vs Time');
% legend('Acceleration', 'Velocity', 'Displacement');
% hold off;

%Calculation for Trip 4
data_forth_trip = dat(1310:1760);
time_forth_trip = t(1310:1760);

%Collect and Average Calibration data at 0g and 1g
data_4_0g = data_forth_trip(1:35);
acc_4_0g_avg = mean(data_4_0g);

data_4_1g = data_forth_trip(45:75);
acc_4_1g_avg = mean(data_4_1g);

%Calculate k0 and k1 for repective Trip
k1_4 = 9.8/(acc_4_1g_avg - acc_4_0g_avg);
k0_4 = -k1_4*acc_4_0g_avg;

%Calculate Accleration by a = k1*d + k0
acc_4_g = (k1_4*data_forth_trip) + k0_4;

%Remove 1g offfset
acc_4 = acc_4_g - 9.8;

%Caculate Velocity by integrating one trip upwards
trip_4_up = acc_4(70:180);
time_4_up = time_forth_trip(70:180);

time_4_up = time_4_up - 90.9;
vel_4 = cumtrapz(time_4_up, trip_4_up);

%Calculate the Drift
time_4_drift = time_4_up(1:10);
vel_4_drift = vel_4(1:10);

%Create a line that follows the drift
drift_equation_4 = polyfit(time_4_drift, vel_4_drift,1);
vel_4_cor = drift_equation_4(1)*time_4_up + drift_equation_4(2);

%Subtract the drift from the calculated velocity
vel_4_corrected = vel_4 - vel_4_cor;

%Calculate Displacement by First trip
displacement_4 = cumtrapz(time_4_up, vel_4_corrected);

%Plot for a single Trip in ADC units
figure; 
plot(time_forth_trip, data_forth_trip);
grid on;
xlabel('Time (seconds)'), ylabel('Acceleration')
title('(Trip 4) Acceleration vs Time')


% %Plot for a single Trip in m/sec^2
figure; 
plot(time_forth_trip, acc_4_g);
grid on;
xlabel('Time (seconds)'), ylabel('Acceleration (m/s^2)')
title('(Trip 4) Acceleration vs Time in meter/second^2');


%Plot for a single Trip with 1g offset removed
figure; 
plot(time_forth_trip, acc_4);
grid on;
xlabel('Time (seconds)'), ylabel('Acceleration (meter/second^2)')
title('(Trip 4) Acceleration vs Time in m/s^2 with 1g Offset Removed');


%Plot for a Upward Journey
figure;
plot(time_4_up, trip_4_up);
grid on;
xlabel('Time (seconds)'), ylabel('Acceleration (meter/second^2)')
title('(Trip 4) Acceleration from Ground Floor to 2nd Floor');

% Velocity Plot with Drift
figure;
plot(time_4_up, vel_4, 'g');
hold on;
grid on;
xlabel('Time (seconds)'), ylabel('Velocity (meter/second)')
title('(Trip 4) Velocity from Ground Floor to 2nd Floor');
plot(time_4_up, vel_4_cor,'r');
hold on;
plot(time_4_up, vel_4_corrected,'b');
legend('Calculated Velocity', 'Drift Error', 'Velocity with Drift Removed');

% Displacement
figure;
plot(time_4_up, displacement_4);
grid on;
xlabel('Time (seconds)'), ylabel('Displacement (meter)')
title('(Trip 4) Displacement from Ground Floor to 2nd Floor');

% Velocity Displacement Acceleration
figure;
hold on;
plot(time_4_up, trip_4_up, 'r');
plot(time_4_up, vel_4_corrected, 'g');
plot(time_4_up, displacement_4, 'b');
grid on;
xlabel('Time (seconds)'), ylabel('Displacement (meter)')
title('(Trip 4) Acceleration, Velocity and Displacement vs Time');
legend('Acceleration', 'Velocity', 'Displacement');
hold off;

