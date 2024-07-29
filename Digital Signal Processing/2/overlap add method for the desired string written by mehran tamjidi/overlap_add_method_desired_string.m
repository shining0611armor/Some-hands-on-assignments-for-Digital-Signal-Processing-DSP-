clc
clear All
close all

%#######################################################################
%       @@   written by mehran tamjidi     stu number : 9665506   @@
%                      email:mehrant.0611@gmail.com
%
%
%                 
%                 overlap add method for an desired hn and x
%        
%                 the code is complete and without any wrong 
%
%                  <><><><><><>< thank you and enjoy ><><><><><><>
%                
%#######################################################################
 
 x = [1 2 -1 2 3 -2 -3 -1 1 1 2 -1];
 hn = [1 2 3];


 
 
 
 
 
  subplot(2,2,1);plot(x);title('signal');      stem(x); 
  subplot(2,2,2);plot(hn);stem(hn);title('hn');        

 N=4;%N barabare 4 gozashtam ke mishe az inja taghiresh dad har meghdare normali gozasht
 m=length(hn);
 L=N-m+1;%N=L+m-1  tole har panjere bedast miad
 hnzeropad=[hn,zeros(1,L-1)];

 
 y1=zeros(1,N);
 
 i1=0;
 i2=0;
 
 flag=0;dd=0;
 for i=0:length(x)-1
         i1= i+1;
         i2= i+L;
     if mod(i,L)== 0
         flag=1;
         
         if i == length(x)-1
             
         break
         end
        y0=y1;%y0= y marhale ghabli
        xx1 = x(1,i1:i2);
        xx2=[xx1,zeros(1,m-1)];
        y1 = cconv(xx2,hn,N);% circular convelotion order
         if i==0
            ynahaii = y1(1,(1:L));
         end
         if (i ~= 0 && i ~= (length(x)-1))
            yn1=y0(1,L+1:L+m-1)+y1(1,1:1:L);
            ynahaii = [ynahaii,yn1];
         end
         if i==(length(x)-2)
            ynahaii = [ynahaii,y1(1,L+1:L+m-1)];
         end
     end
 end
 
 subplot(2,2,3);plot(ynahaii);title('overlap add method'); stem(ynahaii) ;
