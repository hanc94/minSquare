clear all
close all
clc
format long;
%% Primer punto
xi=[200 400 500 700 900 1000];
yi=[60 120 150 210 260 290];
n=length(xi);
xsum=sum(xi);
ysum=sum(yi);
xiyi=sum(xi.*yi);
xi2=sum(xi.^2);
b=(n*xiyi-xsum*ysum)/(n*xi2-xsum^2);
a=(ysum-b*xsum)/n;
yl1=a+b*xi;
er=yi-yl1;
[Merr,p]=max(er);
display(Merr);
plot(xi,yi);
hold on;
plot(xi,yl1);
title('Linealización del sesonr de fuerza');
xlabel('Entrada fuerza (g)');
ylabel('Salida elongación (mm)');
legend('yi=sensor no linealizado','yl=sensor linealizado');

%% Segundo punto.
xi=[0 10 20 30 40 50 60 70 80 90 100];
yi=[0.005 0.098 0.224 0.300 0.405 0.520 0.602 0.715 0.799 0.902 0.999];
n=length(xi);
xsum=sum(xi);
ysum=sum(yi);
xiyi=sum(xi.*yi);
xi2=sum(xi.^2);
b=(n*xiyi-xsum*ysum)/(n*xi2-xsum^2);
a=(ysum-b*xsum)/n;
yl2=a+b*xi;
er=yi-yl2;
[Merr,p]=max(er);
display(Merr);
figure;
plot(xi,yi);
hold on;
plot(xi,yl2);
title('Linealización del sesonr de presión');
xlabel('Entrada presión (KPa)');
ylabel('Salida voltaje (V)');
legend('yi=sensor no linealizado','yl=sensor linealizado');