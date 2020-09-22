function [espn] = div_t(a)
    espn = 0;    
    if ((factorial(80) < a) &&  (a <= factorial(100)))
        epsn = eps^15
    elseif ((factorial(60) < a) &&  (a <= factorial(80)))
        epsn = eps^11
    elseif ((factorial(40) < a) &&  (a <= factorial(60)))
        epsn = eps^8
    elseif ((factorial(20) < a) &&  (a <= factorial(40)))
        epsn = eps^4
    elseif ((factorial(0) < a) &&  (a <= factorial(20)))
        epsn = eps^2
    end
    espn2 = espn
end


% [espn] = div_t(2)