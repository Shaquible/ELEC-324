% truncate_wav.m

truncate = 12;
[f, fs] = audioread('flute.wav');
%info = audioinfo('flute.wav')

nbits = info.BitsPerSample;

f_int = int16(f*2^(nbits-1-truncate));
f_back_to_float = (double(f_int))/2^(nbits-1-truncate);
f_diff = f - f_back_to_float;
gamma = 10*log10(sum(f.^2)/sum(f_diff.^2));
disp(gamma)
audiowrite('diff.wav',f_back_to_float,fs);
audiowrite('Trunc.wav',f_diff,fs);
