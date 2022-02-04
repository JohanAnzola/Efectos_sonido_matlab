% clc, clear all;
[y, Fs]=audioread('Sonidofa1.wav')
%recortar
figure(1)
subplot(1,2,1)
plot(y);
tam=2047
intervalo=29000:29000+tam
y1=y(intervalo);
subplot(1,2,2)
plot(y1);
sound(y1,Fs)
 audiowrite('facortado8192.wav',y1,Fs)
 
figure (2)
L=length(y1);
NFFT=2^nextpow2(L);
f=(Fs/2)*linspace(0,1,NFFT/2+1);

Yre=fft(y1,NFFT)/L;
fr=2*abs(Yre(1:NFFT/2+1));
plot(fr)

% %aumentar o disminuir frecuencia
% sound(y,Fs/2); %lento
% sound(y,Fs*2); %rapido
% %diesmacion
% factor_diezmacion=0.5;
% senal_diesmada=y(1:factor_diezmacion:end);
% sound(senal_diesmada,Fs)