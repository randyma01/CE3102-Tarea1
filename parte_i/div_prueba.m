function [x] = div_prueba(a)
    tol = 10^-8;
    error = tol + 1;
    e = [];
    x = 0.1
    k = 0
    while (error < tol || k <= 2500)
        xn = x * (2 - a * x)
        x = xn
        error = abs((xn + 1) - x)
        e = [e error];
        ++k;
    end
end


% [x] = div_prueba(2)