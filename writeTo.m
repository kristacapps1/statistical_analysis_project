function [ ] = writeTo( M,OUTF,descrip )
% Activity: MATLAB Project writing to output stream
% File: writeTo.m
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
%A simple write function, where input is the element to be written, the
%opened output file, and a description of what the element is
%   This function was specifically designed for ENGR 112 project, and does
%   not return anything
            fprintf(OUTF, '\n');
            fprintf(OUTF,descrip);
            fprintf(OUTF, M);
            fprintf(OUTF, '\n');

end

