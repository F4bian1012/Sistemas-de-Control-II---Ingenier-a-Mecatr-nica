clear all
clc

% Definir el numerador y los denominadores del sistema
numerador = [0.632 0];                      % Numerador del sistema
denominador_0 = [1 -1];                   % Primera parte del denominador
denominador_1 = [1 -0.368];               % Segunda parte del denominador
denominador = conv(denominador_0, denominador_1);  % Convolución de los denominadores

% Definir el tiempo de muestreo
ts = 1; % Tiempo de muestreo

% Crear el sistema de transferencia discreto
fprintf('*** Función de Transferencia Discreta ***\n');
sistema = tf(numerador, denominador, ts)

% Definir el rango de ganancias k para el análisis
k = (0:0.01:4.33);  % Rango de valores de ganancia

% Graficar el Lugar Geométrico de las Raíces (LGR)
fprintf('*** Graficar el Lugar Geométrico de las Raíces (LGR) ***\n');
figure;
rlocus(sistema,k);
title('Lugar Geométrico de las Raíces (LGR) del Sistema Discreto');
xlabel('Parte Real');
ylabel('Parte Imaginaria');
grid on;
