# IIR LOW PASS FILTER(PROCESS 1)


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

    
    [H, W] = freqz(b, a, 512);

    
    plot(W/pi, 20*log10(abs(H))); 
    title('IIR Low-Pass Filter');
    xlabel('Normalized Frequency (\times\pi rad/sample)');
    ylabel('Gain (dB)');
    grid on;
end


```

## Command Window

```bash
>> iirlow_script
Enter the passband ripple (in dB, e.g., 1): 
0.02
Enter the stopband attenuation (in dB, e.g., 40): 
49
Enter the passband edge frequency (normalized to Nyquist, e.g., 0.4): 
0.55
Enter the stopband edge frequency (normalized to Nyquist, e.g., 0.6): 
0.65

```


## Output

<img src="../../img/Screenshot 2024-12-08 at 11.09.15 AM.png">