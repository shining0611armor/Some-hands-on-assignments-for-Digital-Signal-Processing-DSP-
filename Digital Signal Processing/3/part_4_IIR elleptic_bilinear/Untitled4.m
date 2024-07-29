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
% leptic filter bilinear
% ebteda negasht frequency digital be analog ro hesab mikonim


Wp=(2/Td)*tan(Wp/2);
Ws=(2/Td)*tan(Ws/2);

[n,Wpp] = ellipord(Wp,Ws,delta1db,delta2db);
[z,p,k] = ellip(n,delta1db,delta2db,Wpp);
sos = zp2sos(z,p,k);
fvtool(sos);
figure
freqz(sos)
title(sprintf('n = %d Elliptic Lowpass Filter',n));

title(sprintf('n = %d Elliptic Lowpass Filter',n),'color','m')
figure
zplane(z,p)
grid
title(sprintf('n = %d th-Order Elliptic Lowpass Digital Filter',n),'color','m')
%----------------------------------------------------------------------