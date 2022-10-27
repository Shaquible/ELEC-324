% truncate_wav.m

truncate = 10;
[f, fs] = audioread('flute.wav');
info = audioinfo('flute.wav')

nbits = info.BitsPerSample

f_int = int16(f*2^(nbits-1-truncate));
f_back_to_float = (double(f_int))/2^(nbits-1-truncate);
f_diff = f - f_back_to_float;
audiowrite('truncate_6.wav',f_back_to_float,fs);
audiowrite('diff_6.wav',f_diff,fs);
