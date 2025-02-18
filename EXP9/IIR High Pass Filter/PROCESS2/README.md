# IIR HIGH PASS FILTER(PROCESS 2)


## Code

```bash
rp = input('Enter the passband ripple (in dB, e.g., 1): ');
rs = input('Enter the stopband attenuation (in dB, e.g., 40): ');
wp = input('Enter the passband edge frequency (normalized to Nyquist, e.g., 0.6): ');
ws = input('Enter the stopband edge frequency (normalized to Nyquist, e.g., 0.4): ');


iirhigh(rp, rs, wp, ws);


function iirhigh(rp, rs, wp, ws)
   
    if nargin ~= 4
        error('iirhigh requires four input arguments: rp, rs, wp, and ws');
    end
    
    
    [N, wn] = buttord(wp, ws, rp, rs); 
    [b, a] = butter(N, wn, 'high');    


    h = fvtool(b, a);                 
    set(h, 'Analysis', 'freq');       
    legend(h, 'Magnitude (dB)', 'Phase (radians)'); 
    title(h, 'IIR High-Pass Filter: Magnitude and Phase Response');
end

```

## Command Window

```bash
>>iirhigh_script1
Enter the passband ripple (in dB, e.g., 1): 
2
Enter the stopband attenuation (in dB, e.g., 40): 
50
Enter the passband edge frequency (normalized to Nyquist, e.g., 0.6): 
0.7
Enter the stopband edge frequency (normalized to Nyquist, e.g., 0.4): 
0.2

```


## Output

<img src="../../img/Screenshot 2024-12-08 at 11.39.57 AM.png">