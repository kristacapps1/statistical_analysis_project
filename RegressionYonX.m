function [ ] = RegressionYonX( A,numColumns )
% Activity: MATLAB Project Regression
% File: RegressionYonX.m
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
%Plots regression of y on x of data, with the option of either there is just x, or there is x and y
%   will use x to compute y, or will use x and y to compute a new y
   if(numColumns == 1)
      x = [1:0.5:(length(A)+1)/2]; %create x
      x = x(:);
      scatter(x,A,'r','x')
      hold on
      p3 = polyfit(x,A,5); %to the 3rd degree
      y3 = polyval(p3,x);
      plot(x,y3,'m')
   else %there is two columns x and y
      whichX = input('Is column 1 x?y/n\n','s');
      if(whichX == 'y') %column 1 is x
          x = A(1:length(A));
          y = A(2:length(A));
      else %column 2 is x
          y = A(1:length(A));
          x = A(2:length(A));
      end
      scatter(x,y,'r','x')
      hold on
      p2 = polyfit(x,y,3);
      y2 = polyval(p2,x);
      plot(y2,x,'m')
   end
   title('Regression of Y on X')
   pause
end

