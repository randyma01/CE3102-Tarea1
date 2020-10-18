% Calcula el valor de euler
% sk      retorna el valor de 'e' elevado al numero 'a'
%
% a      el exponente de 'e'

function sk = exp_t(a)
    tol = 10^-8;
    error = tol + 1;
    e = [];
    n = 0;
    sk = 0;
    % Suma cada valor de la iteracion mientras que la 
    % tolerancia sea menor a 10^-8 o hasta que se 
    % hayan hecho 2500 iteraciones
    while (tol <= error && n <= 2500)
        deno = div_t(factorial(n));
        % Aproximacion del seno usando la iteracion
        % sk1 = sk + [((a)^n)/n!] 
        sk1 = sk + a^n * deno;
        % Calculo del error que sirve como parametro de 
        % parada para la suma de iteraciones
        error = abs(sk1-sk);
        e = [e error];
        % Para la nueva iteracion se usa el valor recien calculado
        sk = sk1;
        ++n;
    end 
end