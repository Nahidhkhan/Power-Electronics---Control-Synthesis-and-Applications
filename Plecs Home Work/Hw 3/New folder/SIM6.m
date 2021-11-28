load=[10, 2.5, 1.4, 1];
frequency=[250000, 255000, 260000, 265000, 270000, 275000, 280000, 285000, 290000, 295000, 300000, 305000, 310000, 315000, 320000, 325000, 330000, 335000, 340000, 345000, 350000]

for fcounter=1:21
   f= 250000 + (fcounter-1)*5000 
   rescounter = 1;
             for rescounter = 1:4
               R_load=load(rescounter)
               sim('homework2');
               output_voltage(rescounter,fcounter)=v_out;
               end
end
plot(f,output_voltage);