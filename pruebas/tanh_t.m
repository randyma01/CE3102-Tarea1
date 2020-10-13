function sk = tanh_t(a)
   nume = sinh_t(a);
   deno = cosh_t(a);
   sk = nume * div_t(deno);
end