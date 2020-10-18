% Calcula un valor aproximado de pi
% Se usa la Serie de Leibniz para aproximarlo
% sk     retorna el valor de pi
%
%Fórmula de Leibniz: pi/4 = [((-1)^n)/(2n+1)]

function sk = pi_t()
    tol = 10^-8;
    error = tol + 1;
    e = [];
    n = 0;
    sk = 0;
    % Suma cada valor de la iteracion mientras que la 
    % tolerancia sea menor a 10^-8 o hasta que se 
    % hayan hecho 2500 iteraciones
    while (tol <= error && n < 2500)
        cal = (2 * n) + 1;
        % Aproximacion de pi/4 usando la formula de
        % Leibniz: sk1 = sk + [((-1)^n)/(2n+1)]
        sk1 = sk + (((-1)^n) * div_t(cal));
        % Calculo del error que sirve como parametro de 
        % parada para la suma de iteraciones
        error = abs(sk1 - sk);
        e = [e error];
        % Para la nueva iteracion se usa el valor recien calculado
        sk = sk1;
        ++n;
    end
   % Para desejar el valor aproximado de pi, se multiplica
   % el resultado de las iteraciones recien calculado por 4
    sk = 4 * sk; 
end