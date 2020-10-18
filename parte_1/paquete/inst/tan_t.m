% Calcula el valor aproximado de tangente 
% sk      retorna el valor de la tangente 
%
% a       angulo del cual se quiere saber la tangente 

function sk = tan_t(a)
   % Se calcula con la razon trigonometrica de las
   % funciones sin/cos
   nume = sin_t(a);
   deno = cos_t(a);
   % Valor de la aproximación de tangente
   sk = nume * div_t(deno);
end