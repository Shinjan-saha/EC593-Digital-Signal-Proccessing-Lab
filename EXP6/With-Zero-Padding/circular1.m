function circular1(s1,s2)
    m=length(s1);
    n=length(s2);
    N=m+n-1;
    for i=m+1:N
    s1(i)=0;
    end
    for j=n+1:N
    for n=1:N
    s2(j)=0;
    end
    end
    for i=1:N
    y(i)=0;
    for j=1:N
    y(i)=s1(j)*s2(mod((i-j), N)+1)+y(i);
    end;
    end;
    disp(y);
    