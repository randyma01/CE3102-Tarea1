% Calcula el valor de logaritmo en base indicada
% sk      retorna el valor del logaritmo base ingresada
%
% a      base del logaritmo
%
% x      el numero a calcular el logaritmo

function sk = log_t(x,a)
   if (a==1 || a<=0)
     disp('No se puede calcular logaritmo de base = 1 o de <= 0.');
     return;
   elseif (x <= 0)
     disp('El numero debe ser mayor a 0.');
     return;
   else
     % Usa la funcion ln_t con la formula
     % ln(x)/ln(a)
     nume = ln_t(x);
     deno = ln_t(a);
     sk = nume * div_t(deno);
   end
end
