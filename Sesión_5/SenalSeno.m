
frecuencia = 3;
amplitud = 0.2021;
fase = 0;
duracion = 2;
fs = 100;
t = 0:1/fs:duracion-1/fs;

senal_seno = 2*amplitud * sin(2 * pi * frecuencia * t + fase);
% Graficar la señal seno
figure;
plot(t, senal_seno);
xlabel('Tiempo (s)');
ylabel('Amplitud');
title('Señal Seno');
grid on;

%% 
transformada = fft(senal_seno);

frecuencia_hz = linspace(0, fs, length(transformada)); % Eje de frecuencia en Hz
espectro = abs(transformada) / length(transformada); % Normalizar el espectro
figure;
plot(frecuencia_hz, espectro);
xlabel('Frecuencia (Hz)');
ylabel('Amplitud');
title('Espectro de Frecuencia de la Señal Seno');
grid on;
