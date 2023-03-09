clc; clear all; close all;
%%
P_uno = arduino('COM5','Uno');
time = 0;
i=1; 
voltage(1)=0;
To=296.0;
Rref=99600;
B=4574.4;
Vs=5;
VT=0;
RT=0;
T(1)=0; 
Ro=8950;

writeDigitalPin(P_uno,'D13',0);

figure
axis([0 1000 -0.5 70])
hold on
while(time<1000)
    VT=readVoltage(P_uno,'A1');
    Vref=readVoltage(P_uno,'A0');
    Tref=Vref*7.57+22.15;
    RT=(VT)/((Vs-VT)/(Rref));
    Tr=(1)/((log(RT/Ro)/B)+(1/To));
    T(i)=Tr-273.15;
    plot(T)
    fprintf('Temp. Ref. %f \n', Tref);
    fprintf('Temp. Sal. %f \n', T(i));
    fprintf('------------------------------- \n');
    i=i+1;
    time=time+1;
    if(Tref>T)
        writeDigitalPin(P_uno,'D13',1);
        pause(0.025);
        writeDigitalPin(P_uno,'D13',0);
         pause(0.050);
    end
    if(Tref<T)
        writeDigitalPin(P_uno,'D13',0);
    end
end