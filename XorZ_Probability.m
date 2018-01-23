function [XZ,zxInput] = XorZ_Probability(A)
% Activity: MATLAB Project calculate probability from z or x
% File: XorZ_Probability.m
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
%Calculates probability from user input x or z
%   calculates probability
   zxInput = input('Enter X or Z\n');
   zOrX = input('Is the input Z or X? (z/x)\n','s');
   if(zOrX == 'z') %compute x from z and use to get probability
       x = (zxInput*std(A))+mean(A);
       p1 = normcdf(x);
   else % we already know x, and do not need z
       % z = (zxInput-mean(A))/std(A);
       p1 = normcdf(zxInput);
   end
   XZ = p1;
end

