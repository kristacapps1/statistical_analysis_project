function [ B,IN_NAME,numColumns ] = inputFile( )
% Activity: input file initialization for MATLAB project
% File: inputFile.m
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

%Initializes the input from a retrieved filename
%   Is only implemented for text files

   % loading actual data
   IN_NAME = input('Enter the input file name\n','s');
         A = importdata(IN_NAME);
    % determining number of columns and uniqueness
    numCol = input('Is there two columns in this file?y/n\n','s');
    if( numCol == 'y')
        numColumns = 2;
        same = input('Are these columns the same?y/n\n','s')
        if(same == 'y') % only one column needed
            B = A(1,:)
            numColumns = 1;
        % both columns necessary and the number of columns variable remains 2
        else
            B = A;
        end
    else % only one column, keep it
        B = A;
        numColumns = 1;
    end
end

