
clc 
clear all

b1 = [0 ];
b2 = [0 1];

a1 = [1 ];
a2 = [1 -1];
b = b1;
a = conv(a1,a2);

[r,p,k] = residuez(b,a)
[bo,ao] = residuez(r,p,k)


syms z K
F = r(1)/(1-p(1)/z)%%+r(2)/(1-p(2)/z)
iztrans(F,K)