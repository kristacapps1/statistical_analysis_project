function [] = ProbabilityPlots(A,normDist)
% Activity: MATLAB Project Probability Plots
% File: ProbabilityPlots.m
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
%Plots of probability density and cumulative distribution and normal probability plot
%   input is the matrix data
   if(normDist == true) %stats plots are allowed
      % necessary calculations
      M = mean(A);
      S = std(A);
      x = -(1.5*length(A)):.1:(length(A)*5);
      % calculate y and z from x
      y = normpdf(x, M, S);
      z = normcdf(x,M,S);

      %all figures are saved as jpegs
      
      % probability density plot
      figure
      plot(x,y)
      title('Probability Density')
      print('Probability Density','-djpeg')

      % cumulative distribution plot
      figure
      plot(x,z)
      title('Cumulative Distribution')
      print('Cumulative Distribution','-djpeg')
      
      % normal probability plot
      figure
      normplot(A)
      print('Normal Probability Plot','-djpeg')

   else %cannot use stats plots
       fprintf('You have not determined this data is normally distributed')
   end
   pause
end

