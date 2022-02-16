clear all;
close all;

grid on;
hold on;
figure(1)

N=500;                 %długość sygnału, próbki
fp=1000;               %częstotliwość próbkowania
A=2;                   %amplituda funkcji sinus
f=3;                   %częstotliwość funkcji sinus
fi=0.2;                % faza początkowa funkcji sinus

t=[0:1/fp:(N-1)/fp];   %wektor czasu od 0 do (N-1)/fp
                       %ze skokiem: 1/fp
                       
x=A*sin(2*pi*f*t+fi);  %funkcja sinus
subplot(221)
plot(t,x)
xlabel('czas [s]')
ylabel('sinus')

y=rand(1,N);           %szum równomierny
subplot(222)
plot(t,y)
xlabel('czas [s]')
ylabel('szum równomierny')

z=randn(1,N);          %szum nierównomierny
subplot(223)
plot(t,z)
xlabel('czas [s]')
ylabel('szum nierównomierny')

f0=1;                 %sygnał świergotowy
f1=20;
t1=(N-1)/fp;
v=chirp(t,f0,t1,f1);
subplot(224)
plot(t,v)
xlabel('czas [s]')
ylabel('sygnał świergotowy')





