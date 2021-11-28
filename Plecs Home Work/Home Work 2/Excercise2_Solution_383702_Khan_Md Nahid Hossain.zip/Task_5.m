clear
clc
%path   = 'F:\Excercise2_Solution_383702_Khan_Md Nahid Hossain.zip';
load=[10 2.5 1.5 1];
frequency=250000:5000:350000;
for x=1:1:4
R_load=load(x);
for y=1:1:21
f=frequency(y);
simout=sim('Task_5',[0 0.001]);
freq(x,y)= f;
Output(x,y)=v_out;
end
end
for  j=1:1:4
plot(freq(j,:),Output(j,:));
grid on;
hold on;
end
title ('Output Voltage vs Frequency');
xlabel('Frequency (Hz)');
ylabel('Output Voltage (V)');
legend ('R_load=10 Ohm' ,' R_load=2.5 Ohm' ,' R_load=1.5 Ohm' ,' R_load=1 Ohm');