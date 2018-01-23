function [normallyDistributed] = normallyDist( A )
% Activity: MATLAB Project set whether data is normally distributed
% File: normallyDist.m
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
% Based on user input, sets whether project data is normally distributed
%   input is the matrix, outputs whether normally distributed, which is necessary for
%   all probability plots

   normplot(A)
   normD = input('Is this data normally distributed?(determine through histograms or normplot)y/n\n','s');
   if(normD == 'y')
      normallyDistributed = true;
   else 
      normallyDistributed = false;
   end %end of if statement


end

