function output = Frequency(x)
Fs=44000;
n=1:1760;
% x=cos(2*pi*400*n/Fs) + cos(2*pi*1000*n/Fs) + cos(2*pi*2000*n/Fs);
%[x,Fs]=audioread('test1.wav');
y=fft(x);
%plot(abs(y));

%plot(abs(y(1:Fs/2)));

%plot(abs(y));

[Y,I] = max(abs(y));
freq = 0:Fs/length(y):Fs/2;
% fprintf('Maximum occurs at %3.2f Hz\n.',freq(I));
 p1=freq(I);
% disp(p1);

 x=abs(y);
 [Y,I] = max(x(x<max(x)));
 freq = 0:Fs/length(y):Fs/2;
 %fprintf('second Maximum occurs at %3.2f Hz\n.',freq(I));
 p2=freq(I);
 %disp(p2);
 
 
 a=abs(y);
 x1=a(a<max(a));
 [Y,I] = max(x1(x1<max(x1)));
 freq = 0:Fs/length(y):Fs/2;

 
 p3=freq(I);
 array=[p1 p2 p3];
 temp=sort(array) ;

%L=temp(1);
%M=temp(2);
%H=temp(3);
output = temp;

end 
 
 