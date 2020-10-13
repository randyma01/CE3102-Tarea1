function x = aux_root(x, a)
    syms xo;
    f = xo.^a - x;
    f1 = matlabFunction(sym(f)); 
    df = matlabFunction(diff(sym(f1)));
    tol = 10^-8;
    k = 0;
    error = tol + 1;
    e = [];
    xo = x/2;
    % Suma cada valor de la iteracion mientras que la 
    % tolerancia sea menor a 10^-8 o hasta que se 
    % hayan hecho 2500 iteraciones
    while (tol < error && k < 2500)
        deno = df(xo);
        if (deno == 0)
            x = [];
            k = []; 
            error = [];
            disp('La función se indefine.')
            break;
        else
            % Aproximacion de la raiz usando la iteracion
            % x = xo - [(xo^a-x)/(xo^a-x)']
            x = xo - (f1(xo)/deno);
            % Calculo del error que sirve como parametro de 
            % parada para la suma de iteraciones
            error = abs(xo - (f1(xo)/deno));
            e = [e error];
            % Para la nueva iteracion se usa el valor recien calculado
            xo = x;
            ++k;
        end
    end
end