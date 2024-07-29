
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
 
%-------------------------------------------------------------------------
%butterworth filter impulse invariance


Wp=Wp/Td;
Ws=Ws/Td;

[n,Wn] = buttord(Wp,Ws,delta1db,delta2db);
[a,b] = butter(n,Wn);
[z,p,k] = butter(n,Wn);
sos = zp2sos(z,p,k);
fvtool(sos);
figure
freqz(a,b)

title(sprintf('n = %d Butterworth Lowpass Filter',n),'color','m')
figure
zplane(z,p)
grid
title(sprintf('n = %d th-Order Butterworth Lowpass Digital Filter',n),'color','m')
%-----------------------------------------------------------------------