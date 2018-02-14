%   Q2.m
%
%   COMP 546,  Winter 2018
%   Assignment 1 
%   Christopher An
%   260674503
%   seong.an@mail.mcgill.ca

close all
clear

% Defining the values needed for the question

question = 'c';
sigma_1 = 40;
sigma_2 = 1.1*sigma_1;
N = 256;
gau1 = make2DGaussian(N, sigma_1);
gau2 = make2DGaussian(N, sigma_2);

% Defining difference of the gaussian
% DOG_R and DOG_G has opposite values

DOG = gau1 - gau2;
DOG_R = gau1 - gau2;
DOG_G = gau2 - gau1;


switch question
    case 'a'
        for (S = 1:50)      % Iteration for the spatial frequency
            Y = filter2(DOG,mk2Dcosine(256,S,0));
            Y_1D = Y(:);    % Making the 1D vector for RMS calculations
            RMS_Y(S) = rms(Y_1D);   % RMS calculation
        end
       
        plot(1:50,RMS_Y)    % RMS graph plotting
        title('RMS vs. spatial frequency')
        xlabel('spatial frequency')
        ylabel('RMS of DOG')
        
    case 'b'
        I = makeImageSquare(256)    % Generates a 256 by 256 image
        
        Y_1 = filter2(DOG,I(:,:,1));    
    
        figure
        imagesc(Y_1)
        colormap(gray(256)),colorbar  
        
    case 'c'  
        
        question = 'iv'
        
        switch question
            case 'i'     % Red square on white background
                 I = makeImageSquare_rw(256);       
                 Y_R = filter2(DOG_R,I(:,:,1));
                 Y_G = filter2(DOG_G,I(:,:,2));

                 im = Y_R + Y_G;

                 figure
                 imagesc(im)
                 colormap(gray(256)),colorbar

                 
            case 'ii'   % Red square on green background
                 I = makeImageSquare_rg(256);
        
                 Y_R = filter2(DOG_R,I(:,:,1));
                 Y_G = filter2(DOG_G,I(:,:,2));
                 
                 im = Y_R + Y_G;
                 
                 figure
                 imagesc(im)
                 colormap(gray(256)),colorbar

                 
            case 'iii'  % Green square on white background
                 I = makeImageSquare_gw(256);
        
                 Y_R = filter2(DOG_R,I(:,:,1));
                 Y_G = filter2(DOG_G,I(:,:,2));

                 im = Y_R + Y_G;

                 figure
                 imagesc(im)
                 colormap(gray(256)),colorbar

                 
            case 'iv'   % Green square on red background
                 I = makeImageSquare_gr(256);
        
                 Y_R = filter2(DOG_R,I(:,:,1));
                 Y_G = filter2(DOG_G,I(:,:,2));

                 im = Y_R + Y_G;

                 figure
                 imagesc(im)
                 colormap(gray(256)),colorbar

            case 'v'    % White square on black background
                 I = makeImageSquare_wb(256);
        
                 Y_R = filter2(DOG_R,I(:,:,1))
                 Y_G = filter2(DOG_G,I(:,:,2))

                 im = Y_R + Y_G;

                 figure
                 imagesc(im)
                 colormap(gray(256)),colorbar

        end

end      