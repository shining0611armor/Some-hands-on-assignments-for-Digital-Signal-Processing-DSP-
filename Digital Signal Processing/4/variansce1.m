%#######################################################################
%       @@   written by mehran tamjidi     stu number : 9665506   @@
%                      email:mehrant.0611@gmail.com
%        
%                 the code is complete and without any wrong 
%                 
%                  <><><><><><>< thank you  ><><><><><><>
%  
%                       bakhshe1 baraie vaieance=0.01
%#######################################################################


clc
clear All
close all
                 %baraie varience1=0.01

varience1=0.01;             delta1=sqrt(varience1);
% varience2=0.2;              delta2=sqrt(varience2);

sigma2h=5;
N=30;

karane_paiin=(-N/2);
karane_bala=(N/2);


n =karane_paiin:0.1:karane_bala;
n2=-((n).^2);
hn=exp(n2/(2*sigma2h));

len=length(hn);
f=(0:len-1)/len;

x1=delta1*randn(1,len);
figure(1)
subplot(2,2,1);plot(x1);title('signal vorodi');
subplot(2,2,2);plot(hn);title('hn filter gousi');
y1=conv(x1,hn);

n2 =karane_paiin*2:0.1:karane_bala*2;
subplot(2,2,3);plot(y1);title('khoroji dar hoze zaman');


% HW = fftshift(hn);
% HWplot=abs(HW)/len;
% 
% figure(2)
% subplot(2,2,1); fshift1 = (-len/2:len/2-1);
% plot(fshift1,HWplot);title('amplitude of H(w)');
% grid on 


% Y1= fftshift(y1);
% Y1plot=abs(Y1)/len;
% % 
% figure(3)
% subplot(2,2,2);
% fshift2 = (-len+1:len-1)*(10/601);
% figure(2)
% subplot(2,2,1);
% plot(fshift2,Y1plot);title('khoroji darhoze fequency');


% 
% figure(10);
% Y1 = fftshift(y1);
% Fs=10;
% P2 = abs(y1/len);
% P1 = P2(1:len/2+1);
% P1(2:end-1) = 2*P1(2:end-1);
% 
% f = Fs*(0:(len/2))/len;
% plot(f,P1) 
% title('Single-Sided Amplitude Spectrum of X(t)')
% xlabel('f (Hz)')
% ylabel('|P1(f)|')


figure(2)

X1=fft(x1);
r2 = abs(X1/len);
mag1 =2*r2(1:len/2+1);
subplot(2,2,1);plot(mag1);title('fft of input noise');





% 
% Y1 = fft(y1);
% % Compute the two-sided spectrum P2. Then compute the single-sided spectrum P1 based on P2 and the even-valued signal length L.
% 
% P2 = abs(Y1/len);
% P1 = P2(1:len/2+1);
% P1(2:end-1) = 2*P1(2:end-1);
% % Define the frequency domain f and plot the single-sided amplitude spectrum P1. The amplitudes are not exactly at 0.7 and 1, as expected, because of the added noise. On average, longer signals produce better frequency approximations.
% 
% f = 10*(0:(len/2))/len;
% subplot(2,2,2); plot(f,P1); title('fft of output');



HW2=fft(hn);
m2 = abs(HW2/len);
mag3 =2*m2(1:len/2+1);
subplot(2,2,2);plot(mag3);title('fft of hn');





Y1=fft(y1);
P2 = abs(Y1/len);
mag2 =2*P2(1:len/2+1);
% img_part=imag(P1);    %real part equation
% real_part=real(P1);
% %subplot(2,2,1);plot(img_part);
% %subplot(2,2,2);plot(real_part);
% mag=sqrt((img_part.^2)+real_part.^2);
% %subplot(2,2,2);plot(teta);title('angle');xlabel('f (Hz)');
subplot(2,2,3);plot(mag2);title('fft of output');



