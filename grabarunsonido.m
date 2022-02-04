clc, clear all;
Duracion=2 %tiempo de grabacion
Fs=44100; %fs de muestreo de audio
%Creair un objeto de audio en este caso es un
%microfono que se ca a muestrear con Fs, una resolucion de
%16 bits y de un canal. 1 es mono 2 es estereo
Entrada=audiorecorder(Fs,16,1);
%abre cuadro de dialogo
msgbox('Grabando...','titulo');
%funcion de capturar sonido
recordblocking(Entrada, Duracion);
msgbox('Finalizo la grabacion','titulo');
%asigna audio capturado a una variable
x=getaudiodata(Entrada,'int16');
%Guarda en un archivo de audio
audiowrite('sonidomi.wav',x,Fs)
