% Calcula el valor aproximado del inverso de un numero
% sk      retorna el valor aproximado del inverso
%
% a       numero a calcular el inverso

function x = div_t(a)
    tol = 10^-8;
    err = tol + 1;
    k = 0;
    x = 0.1;
    
    % Se calcula primero un valor inicial de x dependiendo
    % de que tan grande es el numero ingresado
    %
    % Valor inicial de x = eps^2 si numero ingresado esta 
    % entre 0! y 20!
    if (factorial(0) < a && a <= factorial(20))
        x = eps^2;
    % Valor inicial de x = eps^4 si numero ingresado esta 
    % entre 20! y 40!
    elseif (factorial(20) < a && a <= factorial(40))
         x = eps^4;
    % Valor inicial de x = eps^8 si numero ingresado esta 
    % entre 40! y 60!
    elseif (factorial(40) < a && a <= factorial(60))
        x = eps^8;
    % Valor inicial de x = eps^11 si numero ingresado esta 
    % entre 60! y 80!
    elseif (factorial(60) < a && a <= factorial(80))
        x = eps^11;
    % Valor inicial de x = eps^15 si numero ingresado esta 
    % entre 80! y 100!
    elseif (factorial(80) < a && a <= factorial(100))
        x = eps^15;
    % Valor inicial de x = eps^20 si numero ingresado esta 
    % entre 100! y 120!
    elseif (factorial(100) < a && a <= factorial(120))
        x = eps^20;
    % Valor inicial de x = 0 si numero ingresado esta 
    % entre 0! y 20! pues se toma como que la division
    % daria un resultado demasiado pequeno
    elseif (factorial(120) < a && a <= factorial(140))
        x = 0;
    end
    
    % Calcula cada valor de la iteracion mientras que la 
    % tolerancia sea menor a 10^-8 o hasta que se 
    % hayan hecho 2500 iteraciones
    while (tol <= err && k <= 2500)
        % Aproximacion del inverso usando la iteracion
        % xn = x*(2 - a*x)
        xn = x * (2 - (a * x));
        % Calculo del error que sirve como parametro de 
        % parada para la suma de iteraciones
        err = abs((xn - x)/xn);
        % En cada iteracion, x toma un valor diferente recien
        % calculado hasta satisfacer parametros del while
        x = xn;
        ++k;
    end
end