clear all; % clear the workspace
clc; % Clear clear the command window
%path = 'C:\Users\SRapol\Documents\Plexim';
R_load = 10;
list_of_load_resistances=[10,2.5,1.4,1];
f=250000;
outputmatrix=zeros(3,84);
i= 1;
n =1;
f = 250000;
for iy = 1:length(list_of_load_resistances)
for n=1:21
R_load = list_of_load_resistances(iy);    
simout =sim('homework2');
outputmatrix(1,i)= R_load;
outputmatrix(2,i)= f;
outputmatrix(3,i)= v_out;     
i=i+1;
f=f+5000;
end
f=250000;
end



x1(1,:)=outputmatrix(2,1:21);

y1(1,:)=outputmatrix(3,1:21);

x2(1,:)=outputmatrix(2,22:42);

y2(1,:)=outputmatrix(3,22:42);

x3(1,:)=outputmatrix(2,43:63);

y3(1,:)=outputmatrix(3,43:63);

x4(1,:)=outputmatrix(2,64:84);

y4(1,:)=outputmatrix(3,64:84);

plot(x1,y1,x2,y2,x3,y3,x4,y4)

title ('Voltage vs Frequency')

xlabel('Frequency (kHz)')

ylabel('Voltage ( V )')

legend ('R_load=10 Ohm' ,' R_load=2.5 Ohm' ,' R_load=1.4 Ohm' ,' R_load=1 Ohm')