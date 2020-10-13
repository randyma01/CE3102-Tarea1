function sk = acos_t(a)
    pi_2 = pi_t() * 0.5
    asin_a = asin_t(a)
    sk = pi_2 - asin_a
end