function firlow2(wp, ws, fm)
    % Handle default values if arguments are missing
    if nargin < 3, fm = 1; end   % Default fm = 1
    if nargin < 2, ws = 0.5; end % Default ws = 0.5
    if nargin < 1, wp = 0.3; end % Default wp = 0.3

   
   wc = ((wp +ws)/2)/fm;
  ft= (ws-wp);
  ft= (ft/fm);
  N= (5.5/ft);
  N=ceil (N);
  f=blackman (N+1);
  b=fir1 (N, wc, f);
 [H, w]=freqz (b, 1,256);
 plot (w, 20*log (abs (H)))
 title ('Blackman of FIR LPF'); xlabel ('Normalized Frequency'); ylabel ('Gain in db'); 
  grid on;
end
