# Addition of 2 Discrete Signal


## Code

```bash
function add(x1, n1, x2,n2)
    m1= (min(min(n1),min(n2)));
    m2= (max(max(n1),max(n2)));
    t= (m1:m2);
    y1= [zeros(1,length(t))];
    y2= [zeros(1,length(t))];
    y1 (find((t>=min(n1)&t<=max(n1))==1))=x1;
    y2(find((t>=min(n2)&t<=max(n2))==1))=x2;
    y3=y1+y2;
    subplot(1,3,1),stem(t,y1,'*');
    subplot(1,3,2),stem(t,y2,'*');
    subplot(1,3,3),stem(t,y3,'*');
end
```

## Command Window

```bash
x1=[2 5 6 3];
n1= [0 1 2 3];
x2= [5 9 -8 6];
n2= [1 2 3 4];
add(x1,n1,x2,n2)
```

## Output 
<img src='../img/add.png'>