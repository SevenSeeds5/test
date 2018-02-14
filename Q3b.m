% Q3b
% Christopher An
% 260674503
% seong.an@mail.mcgill.ca

% Generating the image from different cases in Q3a
I = Q3a(256);    

close all

% Definig the DOG filter parameters again
sigma_1 = 5;
sigma_2 = 1.1*sigma_1;
N = 256;
gau1 = make2DGaussian(N, sigma_1);
gau2 = make2DGaussian(N, sigma_2);
DOG_Y = gau1 - gau2;
DOG_B = gau2 - gau1;

R = squeeze( double( I(:,:,1) ) );    
G = squeeze( double( I(:,:,2) ) );
B = squeeze( double( I(:,:,3) ) );

% Defining the yellow channel
% Then applying the filter on the yellow channel and the blue channel,
% respectively
Y = (R + G)/2;
Y_f = filter2(DOG_Y,Y);
B_f = filter2(DOG_B,B);
    
result = Y_f + B_f;
     
figure
imagesc(result)
colormap(gray(256)),colorbar
title('L and M focused on near square with Y-B filter');
