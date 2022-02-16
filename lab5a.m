clear all;
close all;
fp =2000;
M =201;
fg =[600 ,800]; %wektor złożony z połączenia wartości granicznych fg i fd
fgu =fg /( fp /2);
h=fir1(M-1,fgu,'stop');
th =(0:M -1) *1/ fp;
figure(1)
plot (th ,h)
xlabel ('czas [s]');
ylabel ('odp. impulsowa x[t]');

Nfh =256;
N21h = Nfh /2+1;
fh= linspace (0, fp /2, N21h );
vh= fft(h,Nfh);
wh= abs(vh);
figure(2)
plot (fh ,wh (1: N21h ))
xlabel (' czestotliwosc [Hz]')
ylabel ('modul transmitancji |x(t)|');
