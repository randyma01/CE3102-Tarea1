% Funcion auxiliar que calcula la raiz de un numero y grado dados
% sk     retorna el valor de la raiz de grado a del numero x
%
% a      el grado de la raiz a calcular
% x      el numero a calcular la raiz de grado a

function x = aux_root(x, a)
    syms xo;
    % Calculo de la raiz usa el valor del cero 
    % positivo de la funcion (x^p - a)
    f = xo.^a - x;
    % Funcion f lo pasa a symbolic
    f1 = matlabFunction(sym(f)); 
    % Funcion f1 la deriva, debido a la formula
    % resultante de usar Newton-Raphson
    df = matlabFunction(diff(sym(f1)));
    tol = 10^-8;
    k = 0;
    error = tol + 1;
    e = [];
    % Valor inicial
    xo = x/2;
    % Suma cada valor de la iteracion mientras que la 
    % tolerancia sea menor a 10^-8 o hasta que se 
    % hayan hecho 2500 iteraciones
    while (tol < error && k < 2500)
        deno = df(xo);
        if (deno == 0)
            x = [];
            k = []; 
            error = [];
            disp('La funcion se indefine.')
            break;
        else
            % Aproximacion de la raiz usando la iteracion
            % x = xo - [(xo^a-x)/(xo^a-x)']
            x = xo - (f1(xo)/deno);
            % Calculo del error que sirve como parametro de 
            % parada para la suma de iteraciones
            error = abs(xo - (f1(xo)/deno));
            e = [e error];
            % Para la nueva iteracion se usa el valor recien calculado
            xo = x;
            ++k;
        end
    end
end