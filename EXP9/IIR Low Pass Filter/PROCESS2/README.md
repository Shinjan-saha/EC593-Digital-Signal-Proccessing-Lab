# IIR LOW PASS FILTER(PROCESS 2)


## Code

```bash

rp = input('Enter the passband ripple (in dB, e.g., 1): ');
rs = input('Enter the stopband attenuation (in dB, e.g., 40): ');
wp = input('Enter the passband edge frequency (normalized to Nyquist, e.g., 0.4): ');
ws = input('Enter the stopband edge frequency (normalized to Nyquist, e.g., 0.6): ');


iirlow(rp, rs, wp, ws);


function iirlow(rp, rs, wp, ws)
    
    if nargin ~= 4
        error('iirlow requires four input arguments: rp, rs, wp, and ws');
    end
    
    [N, wn] = buttord(wp, ws, rp, rs); 
    [b, a] = butter(N, wn);           

    
    h = fvtool(b, a);                 
    set(h, 'Analysis', 'freq');       
    legend(h, 'Magnitude (dB)', 'Phase (radians)'); 
    title(h, 'IIR Low-Pass Filter: Magnitude and Phase Response');
end



```

## Command Window

```bash
>> iirlow_script1
Enter the passband ripple (in dB, e.g., 1): 
2
Enter the stopband attenuation (in dB, e.g., 40): 
50
Enter the passband edge frequency (normalized to Nyquist, e.g., 0.4): 
0.2
Enter the stopband edge frequency (normalized to Nyquist, e.g., 0.6): 
0.7

```


## Output

<img src="../../img/Screenshot 2024-12-08 at 11.21.28 AM.png">