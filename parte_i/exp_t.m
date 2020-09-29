function sk = exp_t(a)
    tol = 10^-8;
    error = tol + 1;
    e = [];
    n = 0;
    sk = 0;
    while (tol <= error && n <= 2500)
        deno = div_t(factorial(n));
        sk1 = sk + a^n * deno;
        error = abs(sk1-sk);
        e = [e error];
        sk = sk1;
        ++n;
    end 
end