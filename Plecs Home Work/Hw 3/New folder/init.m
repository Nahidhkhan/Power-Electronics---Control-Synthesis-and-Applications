close all;
clear all;
clc;

%% Given:
fsw = 10e3;
Ts = 1/fsw;
Tsample = Ts*1;
Tpwm = Ts;
L = 3e-3;
Kp=4.994;
T=1e-3

sim('HW3_basic_model');

% TF of the system with current sensor

%Kp=0.7
Kf=1;
G = tf([Kp*Kf],[T*L L 0]);
H = tf([1],[T 1]);
CL = feedback(G,H)
pole(CL)