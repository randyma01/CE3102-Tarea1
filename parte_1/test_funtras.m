% El siguiente script es una prueba del 
% funcionamiento de las funciones 
% implementadas.
%
% La prueba es la siguiente expresión:
% (root^3(sin(3/7) + log(2)) / sinh(sqrt(2))) + atan(e^-1)
% 

% Limpinado las varianbles de
clear;

% Cerrando todas las ventanas del programa
close all;

% Limpiando comando y resultados anterioes de la consola
clc;

% cargando paquete simbolico
pkg load symbolic

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                           
% Parte Derecha de la Suma  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----Fraccion: Numerador----%
% log(2)
ln_2 = ln_t(2)

% 1/7
div_7 = div_t(7)

% 3/7
tres_setimos = 3 * div_7

% sin(3/7)
sen3_7 = sin_t(tres_setimos)

% sin(3/7) + log(2)
arg_raiz = double(sen3_7 + ln_2)

% root^3(sin(3/7) + log(2))
raiz_3 = root_t(arg_raiz, 3)
%--------------------------%

%----Fraccion: Denominador----%
% sqrt(2)
raiz_2 = sqrt_t(2)

% sinh(sqrt(2))
senh_raiz_2 = sinh_t(raiz_2)

% 1/sinh(sqrt(2))
deno = div_t(senh_raiz_2)
%-----------------------------%

%----Fraccion: Completa----%
% root^3(sin(3/7) + log(2)) / sinh(sqrt(2))
frac = raiz_3 * deno
%--------------------------%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                           
% Parte Izquierda de la Suma  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% e^-1
eul = exp_t(-1)

%atan(e^-1)
tan_inv = atan_t(eul)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                           
%        respuesta final       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
respuesta = frac + tan_inv
