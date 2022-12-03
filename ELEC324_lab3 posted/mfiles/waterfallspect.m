function waterfallspect(s, fs, sizeofspectra, numofspectra)

% Simplified version of Lee and Varaiya's waterfallSpectrogram
% function; modified to use fft.
% Displays a 3-D plot of a spectrogram of the signal s.
%
% Arguments:
%   s - The signal.
%   fs - The sampling frequency (in samples per second).
%   sizeofspectra - The number of samples to use to calculate each
%          spectrum.
%   numofspectra - The number of spectra to calculate.

frequencies = [0:fs/sizeofspectra:fs/2];
offset = floor((length(s)-sizeofspectra)/numofspectra);
for i=0:(numofspectra-1)
    start = i*offset;
    A = abs(fft(s((1+start):(start+sizeofspectra))));
    magnitude(:,(i+1)) = A(1:sizeofspectra/2+1);
end
waterfall(frequencies, 0:(numofspectra-1), magnitude');
xlabel('frequency');
ylabel('time');
zlabel('magnitude');