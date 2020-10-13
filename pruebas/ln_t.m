% Calcula el valor de logaritmo natural
% sk      retorna el valor del logaritmo natural
%
% a       el numero a calcular el logaritmo natural

function sk = ln_t(a)
    tol = 10^-8;
    error = tol + 1;
    e = [];
    n = 0;
    sk = 0;
    % Parametro de entrada no puede ser 
    % menor o igual a 0
    if (a <= 0)
      disp('No se puede calcular logaritmo natural de numeros <= 0.');
      return;
    else
      % Suma cada valor de la iteracion mientras que la 
      % tolerancia sea menor a 10^-8 o hasta que se 
      % hayan hecho 2500 iteraciones
      while (tol <= error || n < 2500)
          cal = (2 * n) + 1; 
          % Aproximacion del logaritmo natural usando la iteracion
          % sk1 = sk + [(1/(2n+1))*((a-1)/(a+1))^2n]
          sk1 = sk + ((1 * div_t(cal)) * (((a - 1) * (div_t(a + 1))).^(2 * n)));
          % Calculo del error que sirve como parametro de 
          % parada para la suma de iteraciones
          error = abs(sk1 - sk);
          e = [e error];
          % Para la nueva iteracion se usa el valor recien calculado
          sk = sk1;
          ++n;
      end
      % El valor de la suma se multiplica por la
      % constante [2(a-1)/(a+1)]
      cte = (2 * (a - 1)) * (div_t(a + 1));
      sk = cte * sk;
    end;
end