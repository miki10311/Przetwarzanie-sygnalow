clear all;
close all;

ab=25;
cd=29;
ef=39;
fp=2529;	% czestotliwosc
N=1000;		% dlugosc sygnalu

t=0:1/fp:(N-1)/fp;
x=2*sin(2*pi*ab*t)+3*sin(2*pi*cd*t)+3*sin(2*pi*ef*t);
subplot(211)
plot(t,x)
xlabel('czas [s]')
ylabel('x(t)')

Nf=1024;
N21=Nf/2 +1;
f=linspace(0,fp/2,N21);
v=fft(x,N21);
w=abs(v);
subplot(212)
plot(f,w)
xlabel('czestorliwosci [Hz]')
ylabel('widmo amplitudowe')