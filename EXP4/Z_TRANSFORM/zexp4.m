syms z;
f1=2+ (3/z) + (4/ (z^2));
f2=1+ (-1/z) + (2/ (z^2)) -(6/z^3);
f=f1*f2
f3=iztrans (f)
collect (f)
x (z) =2*z+1/ (3*z^2-4*z+1)
num = [2 1];
den = [3 -4 1];
g=tf (num, den)
zplane (num, den)
[p z] =pzmap (num, den)

