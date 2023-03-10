%% Robot Escribe Eduar
clc
clear all
close all
clear imports
import ETS3.*

L1 = 303;
L2 = 350;
L3 = 46;
L4 = -107;
D0 = 150;
q1 = [-120 120]*pi/180;
q2 = [-145 145]*pi/180;
q3 = [0 150];
q4 = [-360 360]*pi/180;

link_1 = Revolute('qlim',q1,'d',L1,'a',L2,'alpha',0,'offset',-90*pi/180);
link_2 = Revolute('qlim',q2,'d',L3,'a',L2,'alpha',pi,'offset',0);
link_3 = Prismatic ('theta', 0, 'qlim',q3,'a', 0,'alpha',pi,'offset',L4);
link_4 = Revolute('qlim',q4,'d',0,'a',0,'alpha',0,'offset',0);

links = [link_1; link_2; link_3; link_4];

Robot_Articular = SerialLink(links, 'name', 'Robot Articular','plotopt', {'workspace', [-1200 1200 -1200 1200 0 1200]} )

Robot_Articular.teach
hold on
trplot(eye(4),'color','k','length',500)

% Letra E
for i=1:10:250
    PX=-500;
    PY=-400;
    PZ=0;
    Px = PX;
    Py = PY+i;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
for i=1:10:150
    Px = PX+i;
    Py = PY;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
for i=1:10:150
    PX=-500;
    PY=-250;
    PZ=0;
    Px = PX+i;
    Py = PY;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
for i=1:10:150
    PX=-500;
    PY=-125;
    PZ=0;
    Px = PX+i;
    Py = PY;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
%Letra D
for i=1:10:250
    PX=-300;
    PY=-400;
    PZ=0;
    Px = PX;
    Py = PY+i;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
for i=1:10:150
    Px = PX+i;
    Py = PY;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
for i=1:10:250
    PX=Px;
    PY=-400;
    PZ=0;
    Py = PY+i;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
for i=1:10:150
    PY=-125;
    PZ=0;
    Px = PX-i;
    Py = PY;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
%Letra U
for i=1:10:250
    PX=-100;
    PY=-150;
    PZ=0;
    Px = PX;
    Py = PY-i;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
for i=1:10:150
    PX=-100;
    PY=-400;
    Px = PX+i;
    Py = PY;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
for i=1:10:250
    PX=50;
    PY=-400;
    PZ=0;
    Px = PX;
    Py = PY+i;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
% Letra A
for i=1:10:250
    PX=100;
    PY=-400;
    Px = PX;
    Py = PY+i;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
for i=1:10:150
    PX=100;
    PY=-150;
    Px = PX+i;
    Py = PY;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
for i=1:10:250
    PX=250;
    PY=-150;
    Px = PX;
    Py = PY-i;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
for i=1:10:150
    PX=100;
    PY=-250;
    Px = PX+i;
    Py = PY;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
% Letra R
for i=1:10:250
    PX=300;
    PY=-400;
    Px = PX;
    Py = PY+i;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
for i=1:10:150
    PX=300;
    PY=-150;
    Px = PX+i;
    Py = PY;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
for i=1:10:150
    PX=450;
    PY=-150;
    Px = PX;
    Py = PY-i;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
for i=1:10:150
    PX=450;
    PY=-300;
    Px = PX-i;
    Py = PY;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
for i=1:5:70
    PX=300;
    PY=-300;
    Px = PX+i*2;
    Py = PY-i*2;
    Pz = PZ;
    [Q1R, Q2R, Q3R]=calcular(Px,Py,Pz,L1,L2,D0);
    Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
    plot3(Px,Py,Pz,'.','color','r')
end
%Quito el brazo de la mitad para ver el nombre
[Q1R, Q2R, Q3R]=calcular(500,400,Pz,L1,L2,D0);
Robot_Articular.plot([Q1R Q2R Q3R 0],'view',[0,90])
% Funcion que calcula los angulos con x y y
function [Q1,Q2,Q3]=calcular(PX,PY,PZ,L1,L2,D0)
Q3 = D0-PZ;
Q2 = acos((PY^2+PX^2-L1^2-L2^2)/(2*L1*L2));
Q1 = atan2(PX,-PY) - atan2(L2*sin(Q2),L1+L2*cos(Q2));%-90*pi/180;
end