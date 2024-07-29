%#######################################################################
%       @@   written by mehran tamjidi     stu number : 9665506   @@
%                      email:mehrant.0611@gmail.com
%        
%                 the code is complete and without any wrong 
%
%                  <><><><><><>< thank you  ><><><><><><>
%                
%#######################################################################

clc
clear All
close all

Td=1;
Wp = 0.4;
Ws = 0.6;
delta1=0.01 ;   delta1db=-20*log10(1-delta1);
delta2=0.001 ;  delta2db=-20*log10(delta2);


%----------------------------------------------------------------------
%FIR filter by kiser window  ( tapering function )


%    Design a lowpass filter with passband defined from 0 to 1 kHz and stopband 
%    defined from 1500 Hz to 4 kHz. Specify a passband ripple of 
%    1% and a stopband attenuation of 60 dB.

fsamp = 10000;
fcuts = [2000 3000];
mags = [1 0];
devs = [0.01 0.001]; % 0.01 yani 60db attunation
[n,Wn,beta,ftype] = kaiserord(fcuts,mags,devs,fsamp);
hh = fir1(n,Wn,ftype,kaiser(n+1,beta),'noscale');
wvtool(hh);
fvtool(hh);

freqz(hh,1,1024,fsamp)

