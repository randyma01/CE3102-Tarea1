% Calcula el valor aproximado de tangente hiperbolica
% sk      retorna el valor de la tangente hiperbolica
%
% a       angulo del cual se quiere saber la tangente hiperbolica

function sk = tanh_t(a)
   % Se calcula con la razon trigonometrica de las
   % funciones sinh/cosh
   nume = sinh_t(a);
   deno = cosh_t(a);
   % Valor de la aproximación de tangente hiperbolica
   sk = nume * div_t(deno);
end