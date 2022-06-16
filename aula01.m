% variaveis simples no matlab
% escrever a linha com ";" inibe visualização de valor da variavel e sem ";" mostra o valor

a = [10  5  6  7  8   9 0 54 34];
b = 5;
f = a * b
d = 17+ 5;

%% Comentario no matlab + alguns atalhos
% comentario com separação de seção
% No matlab usamos "Ctrl+ r" para comentar e "Ctrl + t" para descomentar

%% Continuar escrevendo operações que consumem 2 linhas ou mais
% utilizamos ...

c = 2 + 5 + ...
7+9;
c
%% Criação de vetores no matlab
vetor_linha = [1 2 3 4 5 6 7 8 9 ]
vetor_coluna = [ 1; 2; 3; 4; 5; 6;  7; 8; 9]

%fazendo transposta de um vetor linha utilizando '
vl_transposto = vetor_linha';
vl_transposto

%fazendo matrizes
matriz_2x5 = [ 1 2 3 4 5; 2 3 4 5 7]

%criar matrizes do R nxm com apenas 1
matriz_ones = ones(3)
vetor_ones = ones(1,3)

%coluna de vetores sendo os elementos todos pi
vetor_pi = ones(3,1)*pi

%criar uma matriz como numeros aleatorios
% so entre 0 e 1
n_aleatorio = rand(3)
% totalmente aleatorio
matriz_naleatorios = randn(3)

%criar uma matriz quadrada
A = [1 2 ; 0 3]

%calcular a inversa de A
inv_A = A^ -1
inv_Af2 = inv(A)

%multiplicação de matrizes pela inversa e ache a matriz Identidade
mult = A * inv(A)

%auto valores e auto vetores com 'eig()'
eig(A)
[autoValor, autovetor] = eig(A)

% produto escalar de 2 matrizes | Obs tem que ter as 2 dimensoes iguais |
% obs semprecolocar o '.' antes da multiplicação de vetor que nao tem a
% mesma dimensao no caso de matrizes não precisa
a = [ 2 5 1 1];
b = [3 5 2 5];
mult_matrizes = a.* b
% mult_matrizestwo = a.* b
% mult_matrizestree = (a(:)')* b(:)

% varrendo de 1 até um tamnho do vetor
vetor = []
for i =1: length(a)
    mat = a(i)*b(i)
    vetor(i) = mat;
end
vetor
clear
clc
%% for
a1= [  2 5 1 1;...
          3 5 2 5;...
          3 5 2 5;...
          3 5 2 5];
b1 = [3 5 2 5;...
          1 1 1 1;...
          3 5 2 5;...
         3 5 2 5];
matriz = zeros(4)% 4x4
linha = 4;
coluna = 4;
% length(linhas)
for i =1:linha % linha 1 tem col 1, col 2, col 3 e col4 , que sao varridas no proximo for
    for j =1:coluna
        matriz(i,j) = a1(i,j) + b1(i,j);
    end
end
matriz
matriz(2,1)

% produto escalar e plot 2d e 3d de vetores
clear
clc
a = 2;
b = [3 5 2 5; 4 5 6 7];
c= a*b;
% plotando a diferença de b e c que é a matriz produto de ( b x um escalar
% a)
plot(b,c)
xlabel('x');
ylabel('y');
title("plot de vetores em 2d")

% produto escalar e plot 3d de vetores
clear
clc
a = [1 1 1]';
b = [3 5 5]';
c =[4 5 7]';

plot3(a,b,c)
xlabel('x');
ylabel('y');
zlabel('z');
title("plot de vetores em 3d")





























