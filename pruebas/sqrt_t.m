% Calcula la raiz cuadrada de un numero dado
% sk     retorna el valor de la raiz cuadrada
%
% x      el numero del cual se desea saber la raiz
%
% Usa la funcion root_t(x, 2)

% Solo debe aceptar parametros mayores o iguales a 0

function sk = sqrt_t(x)
    % La raiz cuadrada solo recibe numeros >= 0
    if(x < 0)
      x = [];
      k = []; 
      error = [];
      disp('El parametro x debe ser mayor o igual a cero.')
      return;
    elseif (x == 0)
      sk = 0;
      return;
    else
      sk = root_t(x, 2);
    end
end

% sk = skrt_t(123456)