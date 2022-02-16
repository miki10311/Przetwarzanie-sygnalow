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
subplot(421)
plot(t,x)
xlabel('czas [s]')
ylabel('sinus')
subplot(422)
nbis=51;
hist(x,nbis);
xlabel('liczba probek')
ylabel('przedział')

y=rand(1,N);           %szum równomierny
subplot(423)
plot(t,y)
xlabel('czas [s]')
ylabel('szum równomierny')
subplot(424)
nbis=51;
hist(y,nbis);
xlabel('liczba probek')
ylabel('przedział')

z=randn(1,N);          %szum nierównomierny
subplot(425)
plot(t,z)
xlabel('czas [s]')
ylabel('szum nierównomierny')
subplot(426)
nbis=51;
hist(z,nbis);
xlabel('liczba probek')
ylabel('przedział')


f0=10;                 %sygnał świergotowy
f1=150;
t1=(N-1)/fp;
v=chirp(t,f0,t1,f1);
subplot(427)
plot(t,v)
xlabel('czas [s]')
ylabel('sygnał świergotowy')
subplot(428)
nbis=51;
hist(v,nbis);
xlabel('liczba probek')
ylabel('przedział')

figure (2)
N2=100;
fp2=100;
t2=0:1/fp2:(N2-1)/fp2;
a=sin(2*pi*2*t2);
stem(t2,a)
xlabel('liczba probek')
ylabel('przedział')



