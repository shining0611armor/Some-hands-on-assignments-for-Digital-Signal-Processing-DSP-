clc
clear All
close all


%#######################################################################
%       @@   written by mehran tamjidi     stu number : 9665506   @@
%                      email:mehrant.0611@gmail.com
%
%
%                 part A plotting the fft mag and phase
%                 and analizing the sideloop and mainloop
%                 tamrine seri dovome dsp   savale aval
%                
%#######################################################################

fs=1000 ; %sampling frequency
T=1/1000; %sampling period
L=500;    %signal lenght
n=T*(0:L-1);
c = 4*cos(2*pi*20*n+pi/3);
subplot(3,2,1);plot(c);title('pure signal');xlabel('t');

%plot(c);
delta=2;
gaussian_noise=delta*randn(1,500);
%plot(gaussian_noise);
S=c+ gaussian_noise;
%plot(S);
subplot(3,2,2);plot(S);title('signal with noise combination');xlabel('t');
Y=fft(S);
P2 = abs(Y/L);
P1 =  2*P2(1:L/2+1);

img_part=imag(P1);    %real part equation
real_part=real(P1);
%subplot(2,2,1);plot(img_part);
%subplot(2,2,2);plot(real_part);
mag=sqrt((img_part.^2)+real_part.^2);
%subplot(2,2,2);plot(teta);title('angle');xlabel('f (Hz)');
subplot(3,2,3);plot(mag);title('magnetute of fft transform');xlabel('f (Hz)');


%bakhshe dovome saval baresi hade tafkik ba dota sinosi
%-------------------------------------------------------------------------------------------


fs1=1000 ; %sampling frequency signale dovom
T2 = 1/400; %sampling period signale dovom
L=500;    %signal lenght signale dovom
n2=T2*(0:L-1);
c = 4*cos(2*pi*20*n+pi/3);
cc = 3*cos(2*pi*20*n2+pi/3);
ctotal = c + cc;
subplot(3,2,4);plot(ctotal);title('pure signal2');xlabel('t');

%plot;
delta=2;
gaussian_noise=delta*randn(1,500);
%plot(gaussian_noise);
S2=ctotal + gaussian_noise;
%plot(S);
subplot(3,2,5);plot(S2);title('signal with noise combination 2');xlabel('t');
Y=fft(S2);
P2 = abs(Y/L);
P1 =  2*P2(1:L/2+1);

img_part=imag(P1);    %real part equation
real_part=real(P1);
%subplot(2,2,1);plot(img_part);
%subplot(2,2,2);plot(real_part);
mag=sqrt((img_part.^2)+real_part.^2);
%subplot(2,2,2);plot(teta);title('angle');xlabel('f (Hz)');
subplot(3,2,6);plot(mag);title('magnetute of fft transform 2');xlabel('f (Hz)');




%end of the first part of assignment     
%-------------------------------------------------------------------------------------


















