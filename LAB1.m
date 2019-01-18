%%  NAME : Antariksh Kudal      PRN : 16070123020

%% INTRODUCTION TO SIMULINK(MASS-FORCE-DAMPER)

clc;
clear all;
close all;
F=8;M=2;K=16;B=4;  % F-force,M-mass,B-damping ratio,K=spring constant
x0=5;              % displacement of 4
sim('MASS');   % simulates the specified model using existing model configuration parameters
plot(t,x)   
hold on;       
B=8;
sim('MASS');
plot(t,x,'r')
B=12;
sim('MASS');
plot(t,x,'b')  % creates 2D plot of displatement versus time 
B=2.5;
sim('MASS');
plot(t,x,'g')
title('RESPONSE')
xlabel('Time(sec)');
ylabel('DISPLACEMENT(m)')
legend('B=4','B=8','B=12','B=2.5');