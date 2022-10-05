[x, fs] = audioread("C:\Users\skell\Documents\ELEC-324\Lab 1\wavfiles\bass.wav");
ws = 2756.25/22500;
wp = 1800/22500;
[n, Wn] = buttord(wp,ws,3,60);
[B,A] = butter(n,Wn, 'low');
Y = filter(B,A,x);
Y = downsample(Y,8);
y2 = decimate(x, 8); 
audiowrite("bassOut.wav", Y, round(fs/8));


