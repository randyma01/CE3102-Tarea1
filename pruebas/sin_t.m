function sk = sin_t(a)
    tol = 10^-8;
    error = tol + 1;
    e = [];
    n = 0;
    sk = 0;
    while (tol <= error && n < 2500)
        cal = (2 * n) + 1; 
        sk1 = sk + (((-1)^n) * ((a.^(cal)) * div_t(factorial(cal))));
        error = abs(sk1 - sk);
        e = [e error];
        sk = sk1;
        ++n;
    end 
end