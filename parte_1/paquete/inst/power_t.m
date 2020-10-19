% Calcula la potencia de un numero, dado un exponente
% sk     potencia de 'a', que se eleva a la 'x'
%
% a      base de la potencia
% x      exponente de la potencia

function sk = power_t(x,a)
  n = 0;
  sk = 1;
  
  % Esta permitido usar solo para potencias positivas
  if (x > 0)
    sk = a.^x;
    return;
  % Si base es 0, exponente >= 1 da 0
  % si exponente es <= 0 da error
  elseif (a == 0)
    if(x >= 1)
      sk = 0;
    else
      sk = [];
      disp("Cero no se puede elevar a 0 o numeros negativos");
    end
  % Todo numero, diferente de 0, elevado a 0 es 1
  elseif (x == 0)
    sk == 1;
    return;
  % Caso en que el exponente es negativo, se hacen multiplicaciones
  % sucesivas de div_t hasta que n sea igual a x
  else
    while(n > x)
      sk = sk*div_t(a)
      % Se resta n pues empieza en 0 y tiene que compararse
      % con numeros negativos
      --n;
    end 
  end
  
end