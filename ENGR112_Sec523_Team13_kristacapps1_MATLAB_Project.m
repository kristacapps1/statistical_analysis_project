% Activity: MATLAB Project Main Program
% File: ENGR112_Sec523_Team13_kristacapps1_MATLAB_Project.m
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
% The main code for MATLAB project
% Displays menu options and facilitates all the program
% abilities and functions

% Set up the stopping condition: 
%   false if user wants to exit the program
%   true if the user wants to continue running the program
continueProgram = true;
%Data is assumed to not be normally distributed
normallyDistributed = false;
%set initial necessary values input file, output file, and username
UserName = input('Enter the name:\n','s');
fprintf('\nUsername: %s \n\n',UserName)
[DATA_READ,IN_NAME,numColumns] = inputFile();
OUTF = setOut(IN_NAME,UserName,DATA_READ);

% This while loop will continue to loop until continueProgram becomes false 
while continueProgram
    % Clear the screen
    % This makes the menu interactions a bit cleaner
    clc;
    
    % Display the menu to the user
	%print_menu_options;
    fprintf('What do you want to do?\n');
    fprintf('1) Set User Name\n');
    fprintf('2) Load data file\n');
    fprintf('3) Clear data from memory\n');
    fprintf('4) Set output filename\n');
    fprintf('5) Plot histogram\n');
    fprintf('6) Plot histogram fit\n');
    fprintf('7) Plot probability plots\n');
    fprintf('8) Regression of y on x\n');
    fprintf('9) Find probability given x or z\n');
    fprintf('0) Find x or z given probability\n');
    fprintf('n) Set normally distributed\n')
    fprintf('X) Exit\n');
    % Print prompt
    fprintf('Enter your choice: ');
    
    % Get user input
    % For safety, read as a string to prevent MATLAB from evaluating input
	choice = input('','s');
    %NAME = 'none';
    
    % Determine which action to take based on the user's input
    switch choice
		case '1'
            % set username
            UserName = input('Enter the name:\n','s');
            
		case '2'
            % load file
            [DATA_READ,IN_NAME,numColumns] = inputFile();
            %OUTF = fopen(OUT_NAME, 'w');
            fprintf(OUTF,'Input data file: ');
            fprintf(OUTF, IN_NAME, OUTF, '\n');
		case '3'
            % clear all data from memory
            clc 
            clear UserName DATA_READ OUTF
            fclose(all);
			
        case '4'
            % Set output file
            OUTF = setOut(IN_NAME,UserName,DATA_READ);
           
        case '5'
            % plot histogram
            h = histogram(DATA_READ)
            saveas(h,'histogram.jpg')
            
        case '6'
            % plot histogram fit
            histfit(DATA_READ)
            print('Histogram Fit','-djpeg')
            
        case '7'
            % plot probabilities
            % if data not previously determined to be normally distributed
            if(normallyDistributed == false)
               normallyDistributed = normallyDist(DATA_READ);
            end
            % is the data currently determined normally distributed? 
            if(normallyDistributed == true)
               ProbabilityPlots(DATA_READ,normallyDistributed)
            else % probability plots not allowed
                fprintf('This data is not normally distributed, probability plots are not possible\n')
                pause
            end
            
        case '8'
            % regression y on x
            RegressionYonX(DATA_READ,numColumns);
         
        case '9'
            % find probability from x or z
            [probability, valXorZ] = XorZ_Probability(DATA_READ);
            fprintf('Probability given x or z = %.2f\n',valXorZ);
            fprintf('P = %.2f\n',probability);
            fprintf(OUTF,'Probability given x or z = %.2f',valXorZ);
            fprintf(OUTF,'\n');
            fprintf(OUTF, 'P = %.2f',probability);
            fprintf(OUTF, '\n');
            pause
         
        case '0'
            % find x or z from probability
            [xOrZ,probabilityOf] = ProbabilityXorZ(DATA_READ);
            fprintf('X or Z requested given probability = %.2f\n',probabilityOf);
            fprintf('X or Z = %.2f\n',xOrZ);
            fprintf(OUTF,'X or Z requested given probability = %.2f',probabilityOf);
            fprintf(OUTF,'\n');
            fprintf(OUTF, 'X or Z = %.2f',xOrZ);
            fprintf(OUTF, '\n');
            pause
        case 'n'
            % Set the variable normallyDistributed
            normallyDistributed = normallyDist(DATA_READ);
        case 'X'
            % end program
            continueProgram = false;
            
        otherwise
            % This case handles invalid input
			fprintf('\nERROR: Please enter an integer between 0 and 9 or X or n\n\n');
            
            % Wait for user to acknowledge the error message
            fprintf('Press any key to continue');
            pause;
    end % end of switch
end % end of while

% clean up after ourselves
fclose('all'); %close input and output files
clc;
clear done choice;
% end of script
