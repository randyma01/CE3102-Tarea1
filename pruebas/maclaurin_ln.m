function [Sk,k]=maclaurin_ln(alpha)
  Sk=0;
  k=1;
  tol = 10^-8;
  error=tol+1;
  while ( tol <= error)
    Sk_new=Sk+((-1)^(k-1)/k)*(alpha-1)^k;
    error=abs(Sk_new-Sk);
    Sk=Sk_new;
    k=k+1;
  end
end


% [Sk,k]=maclaurin_ln(0.5)
