function sk = exp_t(a)
    tol = 10^-8;
    err = tol + 1;
    n = 0;
    sk = 0;
    while (tol <= err && n <= 2500)
        facto = div_t(factorial(n));
        sk1 = a^n * facto;
        err = abs(sk1-sk);
        sk = sk1;
        ++n;
    end 
end