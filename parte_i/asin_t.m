function sk = asin_t(a)
    tol = 10^-8;
    error = tol + 1;
    e = [];
    n = 0;
    sk = 0;
    while (tol <= error && n < 2500)
        cal = (2 * n); 
        cal1 = (2 * n) + 1; 
        facto_n = factorial(n); % n!
        facto_cal = factorial(cal); %(2n)!
        deno = 4.^n * facto_n.^2 * cal1; % 4^n*(n!)^2*(2n+1)
        deno_div_t = div_t(deno); % 1/4^n*(n!)^2*(2n+1)
        mult = a.^(cal1) ; % a^(2n+1) 
        sk1 = sk + (facto_cal * mult * deno_div_t); % {(2n)!/4^n*(n!)^2*(2n+1)} * a^(2n+1)
        error = abs(sk1 - sk);
        e = [e error];
        sk = sk1;
        ++n;
    end 
end