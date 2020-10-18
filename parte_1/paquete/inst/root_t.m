% Funcion que evalua los casos particulares y llama a la 
% funcion auxiliar que calcula la aproximacion de la raiz
%
% sk     retorna el valor de la raiz de grado a del numero x
%
% a      el grado de la raiz a calcular
% x      el numero a calcular la raiz de grado a
%
% Llama a la funcion auxiliar aux_root(x,a)

function rt = root_t(x,a)
    %Exponente de raiz no puede ser cero
    if(a == 0)
      x = [];
      disp('El parametro "a" debe ser diferente a cero.')
      return;
    end

    %Si a es par, x no puede ser negativo
    if ( rem(a, 2) == 0) 
        if(x < 0)
            x = [];
            disp('La raiz del valor ingresado no se puede calcular, desbe ser mayor o igual a cero.')
            return;
        else
            rt = aux_root(x, a);
        end
    end
    %Exponente de raiz impar, x cualquier valor
    if ( rem(a, 2) == 1 )
      rt = aux_root(x, a);
    end 
    % Si el grado es negativo, el numero
    % debe ser diferente de 0
    if (a < 0)
        if(x == 0)
            x = [];
            disp('La raiz, en este caso, no se puede calcular.')
            return;
        else
            rt = aux_root(x, a);
        end
    end
end