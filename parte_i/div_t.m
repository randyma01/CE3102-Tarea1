function x = div_t(a)
    tol = 10^-8;
    err = tol + 1;
    k = 0;
    x = 0.1;

    if (factorial(0) < a && a <= factorial(20))
        x = eps^2;
        disp("primero")
    elseif (factorial(20) < a && a <= factorial(40))
         x = eps^4;
        disp("segundo")
    elseif (factorial(40) < a && a <= factorial(60))
        x = eps^8;
        disp("tercero")
    elseif (factorial(60) < a && a <= factorial(80))
        x = eps^11;
        disp("cuarto")
    elseif (factorial(80) < a && a <= factorial(100))
        x = eps^15;
        disp("quinto")
    end

    while (tol <= err && k <= 2500)
        disp("------------------")
        disp("Iteracion numero: ")
        k
        disp("------------------")
        xn = x * (2 - (a * x))
        err = abs((xn - x)/xn)
        x = xn
        ++k
    end
    disp("******************")
end


% [x] = div_t(2)