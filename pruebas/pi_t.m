function sk = pi_t()
    tol = 10^-8;
    error = tol + 1;
    e = [];
    n = 0;
    sk = 0;
    while (tol <= error && n < 2500)
        cal = (2 * n) + 1;
        NNNNN = ((-1)^n)
        sk1 = sk + (((-1)^n) * div_t(cal));
        error = abs(sk1 - sk)
        e = [e error];
        sk = sk1
        ++n;
        n
    end 
    sk = 4 * sk; 
end