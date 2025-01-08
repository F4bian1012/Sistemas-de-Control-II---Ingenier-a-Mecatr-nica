% Definimos el dominio de la señal continua (tiempo continuo)
t = -pi:0.01:pi;
% Definimos la señal continua (función seno)
y_continua = sin(t);

% Graficamos la señal continua
figure;
plot(t, y_continua);
%xlabel('Tiempo');
%ylabel('Amplitud');
%title('Señal Continua: Función Seno');
grid on;

%%
% Definir los parámetros de la señal discreta
frecuencia = 1; % Frecuencia de la señal seno discreta (en ciclos por muestra)
cantidad_muestras = 20; % Cantidad de muestras para la señal discreta
tiempo_discreto = 0:1:cantidad_muestras-1; % Dominio del tiempo discreto (muestras)
figure;
% Calcular la señal seno discreta
amplitud = 1; % Amplitud de la señal seno
senal_seno_discreta = amplitud * sin(2*pi*frecuencia*tiempo_discreto/cantidad_muestras);

% Graficar la señal seno discreta
stem(tiempo_discreto, senal_seno_discreta);
%xlabel('Tiempo discreto (muestras)');
%ylabel('Amplitud');
%title('Señal Seno Discreta');
grid on;

%%
figure
% Definir los parámetros de la señal discreta
frecuencia = 1; % Frecuencia de la señal seno discreta (en ciclos por muestra)
cantidad_muestras = 20; % Cantidad de muestras para la señal discreta
tiempo_discreto = 0:1:cantidad_muestras-1; % Dominio del tiempo discreto (muestras)

% Calcular la señal seno discreta
amplitud = 1; % Amplitud de la señal seno
senal_seno_discreta = round(amplitud * sin(2*pi*frecuencia*tiempo_discreto/cantidad_muestras),1);

% Graficar la señal seno discreta
stem(tiempo_discreto, senal_seno_discreta);
%xlabel('Tiempo discreto (muestras)');
%ylabel('Amplitud');
%title('Señal Seno Discreta');
grid on;

