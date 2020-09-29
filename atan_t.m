function atan = atan_t(x)
    tol = 10^-8;
    err = tol + 1;
    n = 0;
    atan = 0;
    while (tol <= err && n <= 2500)
        cal = (2 * n) + 1;  
        deno = div_t(cal);
        atan1 = ((-1)^n) * ((x^(cal)) * deno);
        err = abs(atan1-atan);
        atan = atan1;
        ++n;
    end 
end