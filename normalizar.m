clc, clear all;
%leer el soniido
[Senal,Fs]=audioread('Sonido.wav')
%normalizar la señal entre 0 y 1
Minimo=min(Senal);
Normalizada=Senal+abs(Minimo);
Maximo=max(Normalizada)
Normalizada=Normalizada/Maximo;
%ampliando
Ampliada=floor(255.*Normalizada);
%archivo plano
dlmwrite('Sonido.txt','Ampliada')
%plot
subplot(3,1,1)
plot(Senal)
title('original')
subplot(3,1,2)
plot(Normalizada)
title('Normalizada')
subplot(3,1,3)
plot(Ampliada)
title('ampliada')