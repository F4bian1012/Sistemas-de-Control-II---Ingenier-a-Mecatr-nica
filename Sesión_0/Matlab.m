% Creación de variables
a = 5;
b = 10;
% Operaciones
c = a + b;
disp(['La suma de a y b es: ', num2str(c)]);

%% 
% Crear un vector fila
fila = [1, 2, 3, 4, 5];
% Crear un vector columna
columna = [1; 2; 3; 4; 5];

% Crear un vector con un rango de valores
rango = 1:0.5:10;

% Crear un vector con valores espaciados uniformemente
espaciado = linspace(0, 1, 5); % 5 valores entre 0 y 1
disp(fila)
disp (columna)
disp (rango)
disp (espaciado)
%%
% Crear una matriz 2x3
matriz = [1, 2, 3; 4, 5, 6];

% Crear una matriz de ceros de tamaño 3x3
matrizCeros = zeros(3, 3);

% Crear una matriz de unos de tamaño 3x3
matrizUnos = ones(3, 3);

% Crear una matriz identidad de tamaño 4x4
matrizIdentidad = eye(4);

disp(matriz)
disp(matrizCeros)
disp(matrizUnos)
disp(matrizIdentidad)

%%
% Suma de vectores
v1 = [1, 2, 3];
v2 = [4, 5, 6];
sumaVectores = v1 + v2;

% Producto escalar de vectores
productoEscalar = dot(v1, v2);

% Suma de matrices
m1 = [1, 2; 3, 4];
m2 = [5, 6; 7, 8];
sumaMatrices = m1 + m2;

% Producto de matrices
productoMatrices = m1 * m2;

% Transpuesta de una matriz
transpuesta = m1';
disp(v1)
disp(v2)
disp(sumaVectores)
disp(productoEscalar)
disp(m1)
disp(m2)
disp(sumaMatrices)

%%
% Estructura if-else
x = 15;
if x < 10
    disp('x es menor que 10');
else
    disp('x es mayor o igual que 10');
end


%%
% Datos
x = 0:0.1:10;
y = sin(x);
% Gráfica
figure;
plot(x, y);
title('Gráfica de y = sin(x)');
xlabel('x');
ylabel('y');
