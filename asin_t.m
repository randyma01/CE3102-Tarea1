function sk = asin_t(a)
    tol = 10^-8;
    error = tol + 1;
    e = [];
    n = 0;
    sk = 0;
    while (tol <= error && n < 2500)
        cal = (2 * n); %(2n)
        cal1 = (2 * n) + 1; %(2n+1)
        fac = factorial(n); % n!
        facto = factorial(cal); %(2n)!
        deno = 4^n*fac^2*cal1; % 4^n*(n!)^2*(2n+1)
        denom = div_t(deno); % 1/4^n*(n!)^2*(2n+1)
        mult = (x^(cal1)); % x^(2n+1)
        frac = (facto*denom); % (2n)!/4^n*(n!)^2*(2n+1)
        sk1 = (frac*mult); % {(2n)!/4^n*(n!)^2*(2n+1)} * x^(2n+1)

        error = abs(sk1 - sk);
        e = [e error];
        sk = sk1;
        ++n;
    end 
end