function [ OUTF ] = setOut(IN_NAME,NAME,A)
% Activity: MATLAB Project initialize output stream
% File: setOut.m
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
%Sets the output file from a retrieved filename and returns the opened file
%   Input is the input file name, which is only written to the output file
%   as additional data, the specified name of the user, and the data matrix
%   to be processed.

            OUT_NAME = input('Enter the output file name\n','s');
            OUTF = fopen(OUT_NAME, 'w');
            fprintf('Input data file: ')
            fprintf(IN_NAME)
            fprintf('\n')
            fprintf(NAME)
            fprintf('\n')
            fprintf(date)
            fprintf('\n\n')
            fprintf('Median = %.2f\n',median(A))
            fprintf('Mode   = %.2f\n',mode(A))
            if(length(A) >30)
                variance = var(A);
                stds = std(A);
            else
                [variance, stds ] = sampleStats(A);
            end
            fprintf('Var    = %.2f\n',variance)
            fprintf('Stdev  = %.2f\n',stds)
            fprintf('Min    = %.2f\n',min(A))
            fprintf('Max    = %.2f\n',max(A))
            fprintf('Count  = %.0f\n',length(A))
            if(length(A) >30)
                fprintf('Calculated using population variance and standard deviation\n') 
            else
                fprintf('Calculated using sample variance and standard deviation\n') 
            end               
            fprintf(OUTF,'Input data file: ');
            fprintf(OUTF, IN_NAME, OUTF, '\n');
            fprintf(OUTF, '\n');
            fprintf(OUTF, NAME);
            fprintf(OUTF, '\n');
            fprintf(OUTF, date);
            fprintf(OUTF, '\n\n');
            fprintf(OUTF, 'Median = %.2f',median(A));
            fprintf(OUTF, '\n');
            fprintf(OUTF, 'Mode   = %.2f',mode(A));
            fprintf(OUTF, '\n');
            fprintf(OUTF, 'Var    = %.2f',variance);
            fprintf(OUTF, '\n');
            fprintf(OUTF, 'Stdev  = %.2f',stds);
            fprintf(OUTF, '\n');
            fprintf(OUTF, 'Min    = %.2f',min(A));
            fprintf(OUTF, '\n');
            fprintf(OUTF, 'Max    = %.2f',max(A));
            fprintf(OUTF, '\n');
            fprintf(OUTF, 'Count  = %.0f',length(A));
            fprintf(OUTF, '\n');
            pause
            % note: we do not close output file at this point
            % as we may need to write additional information
            % therefore we return the open file
end

