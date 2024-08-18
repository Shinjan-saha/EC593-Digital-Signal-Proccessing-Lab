function dft(x)
    x=[1 -1 0 2];
    n=length(x);
    m=0:1:(n-1);
    for p=1:n
     y(p)=0;
     for i=1:n;
     y(p)=y(p)+x(i)*exp((-j*2*pi*(i-1)*(p-1))/n);
     end;
    end;
    a=real(y);
    subplot(1,2,1);
    stem(a);
    xlabel('time');
    ylabel('amplitude');
    title('real(y)');
    b=imag(y);
    subplot(1,2,2);
    stem(b);
    xlabel('time');
    ylabel('amplitude');
    title('imaginary (y)');