% Calcula el arcocoseno de un angulo dado
% sk     retorna el valor del arcocoseno
%
% a      el numero del angulo del cual se desea saber el arcocoseno

function sk = acos_t(a)
  
    % El arcocoseno solo recibe valores entre 0 y 1
    if (a > 1 || a < 0)
      disp('La funcion se indefine, introduzca valores entre 0 y 1.')
      return;
    % Caso directo cuando a es cero
    elseif(a == 1)
      sk = 0;
    else
      % Se usa la formula de pi/2-asin(x)
      % usando la aproximacion de la funcion de pi
      %
      % Calculo de pi/2 = pi*0.5
      pi_2 = pi_t() * 0.5;
      % Valor de asin(x) se almacena en la variable 
      % asin_a para el calculo de acos
      asin_a = asin_t(a);
      % Uso de la formula pi/2 - asin
      sk = pi_2 - asin_a;
    end
end