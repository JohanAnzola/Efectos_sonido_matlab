clc, clear all
Nombre_archivo='son1.wav'
%Esta instruccion retorna el archivo de audio en dorma de
%vector (y) y la de frecuencia de muestreo con la que fue 
%grabado (fs)
[y,Fs]=audioread(Nombre_archivo)
%soud se usa para reproducir el sonido
sound(y,Fs)