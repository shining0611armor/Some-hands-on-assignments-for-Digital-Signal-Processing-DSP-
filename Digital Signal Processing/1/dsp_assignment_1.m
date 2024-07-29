clc
clear All
close all


%#######################################################################
%       @@   written by mehran tamjidi     stu number : 9665506   @@
%                      email:mehrant.0611@gmail.com
%
%            for listening to each audio you should making the  
%                  %sound(d,fs); of each part uncomment
%                  or listening to the record wav files
%#######################################################################



in = audioread('2.wav');
%wavplay(a,44100);
subplot(2,3,1);plot(in);title('input signal');
[in,fs]=audioread('2.wav');
%sound(d,fs);

%yout = upfirdn(d,1,3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
up_sample = upsample(in,3);
subplot(2,3,2);plot(up_sample);title('upsampling');
audiowrite('upsample.wav',up_sample,fs);
%sound(up_sample,fs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
down_sample=downsample(in,3);
subplot(2,3,3);plot(down_sample);title('downsampling');
audiowrite('downsample.wav',down_sample,fs);
sound(down_sample,fs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
signal_to_noise_ratio = 30;
gaussian_noise = awgn(in,signal_to_noise_ratio);
subplot(2,3,4);plot(gaussian_noise);title('white noise');
audiowrite('noise.wav',gaussian_noise,fs);
%sound(gaussian_noise,fs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
signal_to_noise_ratio = 30;
up_sample_plus_gaussian_noise = awgn(up_sample,signal_to_noise_ratio);
subplot(2,3,5);plot(up_sample_plus_gaussian_noise);title('up sample + white noise');
audiowrite('up sample + noise.wav',up_sample_plus_gaussian_noise,fs);
%sound(up_sample_plus_gaussian_noise,fs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
signal_to_noise_ratio = 30;
down_sample_plus_gaussian_noise = awgn(down_sample,signal_to_noise_ratio);
subplot(2,3,6);plot(down_sample_plus_gaussian_noise);title('down sample + white noise');
audiowrite('down sample + noise.wav',down_sample_plus_gaussian_noise,fs);
%sound(down_sample_plus_gaussian_noise,fs);








%Output_sequence=quantizer_DSP(input_sequence,B);
%q = quantizer(in);
%sound(q,fs);
%subplot(2,2,4);plot(q);title('quantizer');






