syms z n;
figure()
G_z =  0.37/ (z - 0.63);
% Respuesta al escalón
respuesta_escalon = iztrans(G_z / (z - 1), z, n)
n_values = 0:50;
respuesta_escalon_values = subs(respuesta_escalon, n, n_values);
% Graficar la respuesta al escalón
stem(n_values, double(respuesta_escalon_values), 'filled');
xlabel('Tiempo discreto (n)');
ylabel('Respuesta al escalón');
title('Respuesta al Escalón en un Sistema de Primer Orden en Tiempo Discreto');
grid on;

%%
% Parámetros del sistema de primer orden en el dominio continuo
K = 1;  % Ganancia
T = 1;  % Constante de tiempo del sistema de primer orden

% Convertir el sistema a tiempo discreto usando una frecuencia de muestreo
Ts = 1;  % Tiempo de muestreo
sys_cont = tf(K, [T 1]);  % Función de transferencia en tiempo continuo

% Convertir la función de transferencia al dominio Z (tiempo discreto)
sys_disc = c2d(sys_cont, Ts, 'zoh')  % 'zoh' es el método de retención de orden cero

% Crear una entrada tipo rampa en tiempo discreto
N = 10;  % Número de muestras
t = (0:N-1)' * Ts;  % Vector de tiempo
rampa = t;  % Entrada tipo rampa en tiempo discreto

% Simulación de la respuesta del sistema
[y, t_out] = lsim(sys_disc, rampa, t)  % Simular la respuesta del sistema

% Graficar la entrada y la respuesta del sistema
figure;
plot(t_out, rampa, '--', 'DisplayName', 'Entrada rampa');
hold on;
plot(t_out, y, 'DisplayName', 'Respuesta del sistema');
xlabel('Tiempo [s]');
ylabel('Amplitud');
title('Respuesta a la rampa de un sistema de primer orden en el dominio Z');
legend;
grid on;

