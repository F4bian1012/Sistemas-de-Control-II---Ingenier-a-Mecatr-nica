
frecuencia = 1;
duracion = 2;
fs = 100;
t = 0:1/fs:duracion-1/fs;
senal_cuadrada = square(2 * pi * frecuencia * t);
figure()
plot(senal_cuadrada)
% Calcular la Transformada de Fourier
transformada = fft(senal_cuadrada);
frecuencia_hz = linspace(0, fs, length(transformada)); % Eje de frecuencia en Hz
espectro = abs(transformada) / length(transformada); % Normalizar el espectro

figure;
plot(frecuencia_hz, espectro);
xlabel('Frecuencia (Hz)');
ylabel('Amplitud');
title('Espectro de Frecuencia de una Señal Cuadrada de 10 Hz');
grid on;
