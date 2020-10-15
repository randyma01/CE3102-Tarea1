% Calcula el arcotangente de un angulo dado
% sk     retorna el valor del arcotangente
%
% a      el numero del angulo del cual se desea saber el arcotangente

function sk = atan_t(a)
    tol = 10^-8;
    error = tol + 1;
    e = [];    
    n = 0;
    sk = 0;
    % Suma cada valor de la iteracion mientras que la 
    % tolerancia sea menor a 10^-8 o hasta que se 
    % hayan hecho 2500 iteraciones
    while (tol <= error && n <= 2500)
        cal = (2 * n) + 1;
        % Aproximacion del arcotangente usando la iteracion
        % sk1 = sk + (-1)^n*(a^(2n+1)/(2n+1))
        sk1 = sk + (((-1)^n) * ((a.^(cal)) * div_t(cal)));
        % Calculo del error que sirve como parametro de 
        % parada para la suma de iteraciones
        error = abs(sk1 - sk);
        e = [e error];
        % Para la nueva iteracion se usa el valor recien calculado
        sk = sk1;
        ++n;
    end 
end