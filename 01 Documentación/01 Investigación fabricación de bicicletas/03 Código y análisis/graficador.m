% Script Graficador:

clc;
clear;
close all;

%--------------------------------------------------------------------------
% LOAD DATA:
load('data_time_manufacturing.mat');
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% Variables Aux:
x = 0.5:1:20.5;
y = [182.8 335.2 89.2 223.4 117.3 117.7 350.4 384.8 388.2 22.8 397.5 40.4 46.6 744.8 462.1 480 96.5 324.8 399.1 875.8];
%--------------------------------------------------------------------------

%--------------------------------------------------------------------------
% PLOTING:
figure(1)
process = categorical(proceso);
time = tiempo_min;
bar(process,time)
grid on;
title("Tiempo por proceso",'FontSize',14,'FontWeight','bold');
ylabel("Tiempo [min]",'FontSize',12,'FontWeight','bold');
xlabel("Proceso",'FontSize',12,'FontWeight','bold');
for i=1:1:20
    text(x(i),y(i)+10,strcat(num2str(y(i))," min"),'FontSize',12,'FontWeight','bold');
end

%--------------------------------------------------------------------------


