% Calcula el arcoseno de un angulo dado
% sk     retorna el valor del arcoseno
%
% a      el numero del angulo del cual se desea saber el arcoseno

function sk = asin_t(a)
    tol = 10^-8;
    error = tol + 1;
    e = [];
    n = 0;
    sk = 0;
    % El arcoseno solo recibe valores entre 0 y 1
    if (a > 1 || a < 0)
      disp('La funcion se indefine, introduzca valores entre 0 y 1.')
      return;
    else
      % Suma cada valor de la iteracion mientras que la 
      % tolerancia sea menor a 10^-8 o hasta que se 
      % hayan hecho 2500 iteraciones
      while (tol <= error && n < 2500)
          cal = (2 * n); 
          cal1 = (2 * n) + 1; 
          facto_n = factorial(n); % n!
          facto_cal = factorial(cal); %(2n)!
          deno = 4.^n * facto_n.^2 * cal1; % 4^n*(n!)^2*(2n+1)
          deno_div_t = div_t(deno); % 1/4^n*(n!)^2*(2n+1)
          mult = a.^(cal1) ; % a^(2n+1)
          % Aproximacion del arcoseno usando la iteracion
          % sk1 = [(2n)!/4^n*(n!)^2*(2n+1)} * a^(2n+1)] 
          sk1 = sk + (facto_cal * mult * deno_div_t); % {(2n)!/4^n*(n!)^2*(2n+1)} * a^(2n+1)
          % Calculo del error que sirve como parametro de 
          % parada para la suma de iteraciones
          error = abs(sk1 - sk);
          e = [e error];
          % Para la nueva iteracion se usa el valor recien calculado
          sk = sk1;
          ++n;
      end
    end
end