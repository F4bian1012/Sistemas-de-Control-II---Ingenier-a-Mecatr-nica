% 0 --> parte real 1-->Z coeficiente de z
b1 = [0 1];
% 1 --> parte real coeficiente -1-->Z 
a1 = [1 -1];
% 1 --> parte real coeficiente 0.5-->Z coeficiente 0.2-->Z^2
a2 = [1 0.5 0.2];
b = b1;
a = conv(a1,a2);
[r,p,k] = residuez(b,a)


%%
syms z
F = ((0.588)/(1-(1)*z^(-1)))+((0.588)/(1-(1)*z^(-1)))+((0.588)/(1-(1)*z^(-1)));
iztrans(F)




