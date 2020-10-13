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
    %Exponente de raiz impar, x cualquier valor
    end

    if ( rem(a, 2) == 1 )
      rt = aux_root(x, a);
    end 

    if (a < 0)
        if(x == 0)
            x = [];
            disp('La raiz, en este caso, para cero no se puede calcular.')
            return;
        else
            rt = aux_root(x, a);
        end
    end
end

% sq = sqrt_t(123456)