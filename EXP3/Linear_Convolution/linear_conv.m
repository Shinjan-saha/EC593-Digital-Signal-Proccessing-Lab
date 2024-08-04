x= [1 -1 2 3 4 ];
h= [1 -1 0 1];

m= length(x);
n= length(h);

n1=0:1:m-1;
n2=0:1:n-1;
n3=0:1:m+n-2;

subplot(3,1,1);
stem(n1,x);
title('x(n)');
xlabel('n');
ylabel('Amplitude');

subplot(3,1,2);
stem(n2,h);
title('h(n)');
xlabel('n');
ylabel('Amplitude');

for i=1:m+n-1
    y(i)=0;
    for j=1:m
        if((i-j)>0 &&(i-j)<n)
            y(i)=y(i)+x(j)*h(i-j+1);
            subplot(3,1,3);
            stem(y);
        end;
    end;
end;

title('y(n)');
xlabel('n');
ylabel('Amplitude');