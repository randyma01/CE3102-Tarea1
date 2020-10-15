% Calcula el arcocoseno de un angulo dado
% sk     retorna el valor del arcocoseno
%
% a      el numero del angulo del cual se desea saber el arcocoseno

function sk = acos_t(a)
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