function [ variance, stds ] = sampleStats( A )
%Input is array A, calculates the sample std and variance
%   calculates sample std and variance
   alpha  = 0.01;
   beta = 0.01;
   delta = 0.5*(std(A));
   N = floor(((1.96/delta)^2)*(std(A))^2); %calculed size of sample
   if(N>length(A))
       N = N - length(A);
   end
   sample = 0:N;
   for i = 1:N
        sample(i) = A(randi([1 length(A)],1,1));
   end
   xavg = mean(sample);
   variance = (1/(N-1))*sum(sample-xavg);
   stds = sqrt(variance);
end

