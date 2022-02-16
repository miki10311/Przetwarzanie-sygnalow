clear all;
close all;

grid on;
hold on;

N=4000;                      %długość sygnału, próbki
fp=10000;                    %częstotliwość próbkowania
t=[0:1/fp:(N-1)/fp];         %wektor czasu od 0 do (N-1)/fp
                             %ze skokiem: 1/fp
                             
kmax=1000;                   %maksymalna ilość próbek
tr=[-kmax/fp:1/fp:kmax/fp];  %wektor czasu od -kmax/fp do
                             %kmax/fp ze skokiem: 1/fp
                             
x=sin(2*pi*350*t);           %funkcja sinus
subplot(321)
plot(t,x)
xlabel('czas [s]')
ylabel('sinus')
                             
rx=xcorr(x,x,kmax);          %autokorelacja sinusa
subplot(322)
plot(tr,rx)
xlabel('przesunięcie próbki [s]')
ylabel('autokorelacja')

y=rand(1,N);                 %szum równomierny
subplot(323)
plot(t,y)
xlabel('czas [s]')
ylabel('szum równomierny')

rx=xcorr(y,y,kmax);          %autokorelacja szumu równomiernego
subplot(324)
plot(tr,rx)
xlabel('przesunięcie próbki [s]')
ylabel('autokorelacja')

z=randn(1,N);                %szum gaussowski
subplot(325)
plot(t,z)
xlabel('czas [s]')
ylabel('szum nierównomierny')

rx=xcorr(z,z,kmax);          %autokorelacja szumu gaussowskiego
subplot(326)
plot(tr,rx)
xlabel('przesunięcie próbki [s]')
ylabel('autokorelacja')
