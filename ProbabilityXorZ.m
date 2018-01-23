function [xOrZ,probabilityOf] = ProbabilityXorZ(A)
% Activity: MATLAB Project calculate z or x from probability
% File: ProbabilityXorZ.m
% Date:    1 May 2016
% By:      Krista Capps
%          kristacapps1
% Section: 523
% Team:    13
%
% ELECTRONIC SIGNATURE
% Krista Capps
%
% The electronic signature above indicates the script
% submitted for evaluation is my individual work, and I
% have a general understanding of all aspects of its
% development and execution.
%
%Calculates z or x from probability
%  Input is the array
   probabilityOf = input('Enter probability\n');
   wantZorX = input('Do you need Z or X? (z/x)\n','s');
   x = norminv(probabilityOf,mean(A),std(A));
   % does user need x or z
   if(wantZorX == 'z') % calculate z from x
       xOrZ = (x-mean(A))/std(A);
   else % we already have x
       xOrZ = x;
   end
   %xOrZ = sum(xOrZ)/length(xOrZ);
end

