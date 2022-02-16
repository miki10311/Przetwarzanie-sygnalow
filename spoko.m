clear all;
close all;

fp=2529;
ab=25;
cd=29;
ef=39;

N=1000;
t=(0:N-1)*1/fp;
x=sin(2*pi*ab*t)+sin(2*pi*cd*t)+sin(2*pi*ef*t);

subplot(211)
plot(t,x);
title('Sinus złożony');
xlabel('czas[s]');
ylabel('x(t)');


Nf=2^nextpow2(N);
N21= Nf/2 +1;
f=linspace(0, fp/2,N21);
vx = fft (x, Nf);
wx=abs(vx);
subplot(212)
plot(f,wx(1:N21))
xlabel('czestotliwosc [Hz]')
ylabel('modul widma')