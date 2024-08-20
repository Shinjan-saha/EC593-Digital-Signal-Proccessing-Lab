
# Generating Cosine Wave

## Continious Code
```bash
a=1;
w=0.5;
t=1:0.1:10;
y=a*cos(w*t);
plot(t,y)
title('Cosine Wave');
xlabel('Time');
ylabel('Amplitude');
```
## Discrete Code
```bash
a=1;
w=0.5;
t=1:0.1:10;
y=a*cos(w*t);
stem(t,y)
title('Cosine Wave');
xlabel('Time');
ylabel('Amplitude');

```
## Output

| Continious Domain | Discreet-Domain |
|----------------------|---------------------|
| ![Continious Domain](../img/coscont.png) | ![Discreet-Domain](../img/cosdisc.png) |