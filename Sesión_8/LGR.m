clear all
clc
numerador = [1, 3];   % Numerador del sistema
denominador = [1, 13, 54, 82, 60, 0];   % Denominador del sistema
fprintf('*** Función de Transferencia ***\n');

sistema = tf(numerador, denominador)
%%
fprintf('*** Graficar el lugar geométrico de las raíces ***\n');
figure;
k = (0:1:35);
rlocus(sistema); 
[r, k1]=rlocus(sistema,k);
title('Lugar Geométrico de las Raíces');
xlabel('Parte Real');
ylabel('Parte Imaginaria');
hold on
for i = 1:length(k)
    % Graficar cada raíz correspondiente al valor de ganancia 'k(i)'
    plot(real(r(:, i)), imag(r(:, i)), 'bo', 'MarkerSize', 5, 'DisplayName', sprintf('k = %.1f', k(i)));
end
grid on;
%%
fprintf('*** Calcular Y Graficar polos y ceros del sistema ***\n');

polos = pole(sistema)
ceros = zero(sistema)

hold on;
plot(real(polos), imag(polos), 'rx', 'MarkerSize', 20, 'LineWidth', 2); % Polos (x en rojo)
plot(real(ceros), imag(ceros), 'go', 'MarkerSize', 20, 'LineWidth', 2); % Ceros (o en verde)

for k = 1:length(polos)
    text(real(polos(k)), imag(polos(k)), sprintf('Polo %d', k), 'VerticalAlignment', 'bottom');
end
for k = 1:length(ceros)
    text(real(ceros(k)), imag(ceros(k)), sprintf('Cero %d', k), 'VerticalAlignment', 'top');
end
%%
fprintf('polos del sistema\n');
n_polos = length(polos)
fprintf('Ceros del sistema\n');
n_ceros = length(ceros)
n_asintotas = n_polos - n_ceros

if n_asintotas > 0
    suma_polos = sum(real(polos));
    suma_ceros = sum(real(ceros));
    fprintf('Punto de intersección de las asíntotas\n');
    centro_asintotas = (suma_polos - suma_ceros) / n_asintotas
    fprintf('*** Ángulos de las asíntotas ***\n');

    angulo_asintotas = (0:n_asintotas-1) * (180 / n_asintotas)

    % Graficar cada asíntota
    for k = 1:n_asintotas
        theta = angulo_asintotas(k) * pi / 180; % Convertir a radianes
        x_asintota = real(centro_asintotas) + [-100, 100] * cos(theta);
        y_asintota = imag(centro_asintotas) + [-100, 100] * sin(theta);
        plot(x_asintota, y_asintota, '--k', 'LineWidth', 1); % Asíntota en línea negra discontinua
    end
end

%% Cálculo de los ángulos de salida de los polos
for i = 1:length(polos)
    % Calcular ángulo de salida del polo i
    theta_salida = 180;  % Empezar con 180 grados
    for j = 1:length(polos)
        if i ~= j
            theta_salida = theta_salida + angle(polos(i) - polos(j)) * (180/pi) % Convertir a grados
        end
    end
    for j = 1:length(ceros)
        theta_salida = theta_salida - angle(polos(i) - ceros(j)) * (180/pi) % Convertir a grados
    end
    
    % Mostrar el ángulo en el gráfico
    text(real(polos(i)), imag(polos(i)), sprintf('\\theta_{salida} = %.1f°', theta_salida), ...
         'HorizontalAlignment', 'right', 'VerticalAlignment', 'bottom');
end

%% Cálculo de los ángulos de llegada a los ceros
for i = 1:length(ceros)
    % Calcular ángulo de llegada al cero i
    theta_llegada = 180;  % Empezar con 180 grados
    for j = 1:length(ceros)
        if i ~= j
            theta_llegada = theta_llegada + angle(ceros(i) - ceros(j)) * (180/pi) % Convertir a grados
        end
    end
    for j = 1:length(polos)
        theta_llegada = theta_llegada - angle(ceros(i) - polos(j)) * (180/pi) % Convertir a grados
    end
    
    % Mostrar el ángulo en el gráfico
    text(real(ceros(i)), imag(ceros(i)), sprintf('\\theta_{llegada} = %.1f°', theta_llegada), ...
         'HorizontalAlignment', 'left', 'VerticalAlignment', 'top');
end


