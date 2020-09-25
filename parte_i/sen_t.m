function sk = sen_t(a)
    tol = 10^-8;
    err = tol + 1;
    n = 0;
    sk = 0;
    while (tol <= err && n <= 2500)
        cal = (2 * n) + 1;  
        facto = factorial(cal);
        deno = div_t(facto);
        sk1 = ((-1)^n) * ((a^(cal)) * deno);
        err = abs(sk1-sk);
        sk = sk1;
        ++n;
    end 
end