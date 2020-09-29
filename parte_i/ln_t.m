function sk = ln_t(a)
    tol = 10^-8;
    error = tol + 1;
    e = [];
    n = 0;
    sk = 0;
    while (tol <= error && n < 2500)
        cal = (2 * n) + 1; 
        sk1 = sk + ((1 * div_t(cal)) * (((a - 1) * (div_t(a + 1))).^(2 * n)));
        error = abs(sk1 - sk);
        e = [e error];
        sk = sk1;
        ++n;
    end 
    cte = (2 * (a - 1)) * (div_t(a + 1));
    sk = cte * sk;
end





       
