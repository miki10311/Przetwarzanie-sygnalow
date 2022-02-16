clear all;
close all;

fp=2529;
ab=25;
cd=29;
ef=39;

N=100000;
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
title('Widmo przed decymacją');


dr=27;
y=decimate(x,dr);
Ny=length(y);
fpy=fp/dr;
ty=(0:Ny-1)*1/fpy;
figure(2)
subplot(211)
plot(ty,y)
xlabel('czas [s]')
ylabel('sygnal')
title('Sinus złożony');


Nfy=2^nextpow2(Ny);
N21y=Nfy/2 +1;
fy=linspace(0,fpy/2,N21y);
vy=fft(y,Nfy);
wy=abs(vy);
subplot(212)
plot(fy,wy(1:N21y));
xlabel('czestotliwosc [Hz]');
ylabel('modul widma')
title('Widmo po decymacji');