% Lab 3 question 4.2.1.m

n = [0:1:1499];
x = 0.999*sin(pi*t.^1.5/100);
numChunks = 25;
chunkSize = length(x)/numChunks;
%for each chunk, calculate the DFT and use a color map to add it to the result image
resultImage = zeros(chunkSize/2, numChunks);
%each chunk should containt half of the last chunks samples
for i = 1:numChunks
    %split array into double the number of chunks
    chunk1 = x((i-1)*chunkSize/2+1:i*chunkSize/2)
    chunk2 = x(i*chunkSize/2+1:(i+1)*chunkSize/2)
    chunk = cat(2, chunk1, chunk2);
    X = fft(chunk);
    %take only the first half of the DFT
    X = X(1:chunkSize/2);
    X = abs(X);
    resultImage(:,i) = flip(X,2);
end
y = round(abs(fft(x(1:66))));
colormap(jet(max(y(34:66))));
image(resultImage);
%specgram(x,60,2000)