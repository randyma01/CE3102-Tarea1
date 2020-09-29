function x = div_t(a)
    tol = 10^-8;
    err = tol + 1;
    k = 0;
    x = 0.1;

    if (factorial(0) < a && a <= factorial(20))
        x = eps^2;
    elseif (factorial(20) < a && a <= factorial(40))
         x = eps^4;
    elseif (factorial(40) < a && a <= factorial(60))
        x = eps^8;
    elseif (factorial(60) < a && a <= factorial(80))
        x = eps^11;
    elseif (factorial(80) < a && a <= factorial(100))
        x = eps^15;
    elseif (factorial(100) < a && a <= factorial(120))
        x = eps^20;
    elseif (factorial(120) < a && a <= factorial(140))
        x = 0;
    end

    while (tol <= err && k <= 2500)
        xn = x * (2 - (a * x));
        err = abs((xn - x)/xn);
        x = xn;
        ++k;
    end
end