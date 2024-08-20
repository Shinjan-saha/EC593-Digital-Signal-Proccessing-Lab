
# Generating Triangular Signal


## Continious Code
```bash
y=[zeros(1,1),ones(1,1),zeros(1,1)];
plot(y);
xlabel('Time');
ylabel('Amplitude');
title('Triangular Signal Continuous Domain');


```
## Discrete Code
```bash
y=[zeros(1,1),ones(1,1),zeros(1,1)];
stem(y);
xlabel('Time');
ylabel('Amplitude');
title('Triangular Signal Discrete Domain');
```
## Output

| Continious Domain | Discreet-Domain |
|----------------------|---------------------|
| ![Continious Domain](../img/tricont.png) | ![Discreet-Domain](../img/tridisc.png) |