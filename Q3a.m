% Q3a
% Christopher An
% 260674503
% seong.an@mail.mcgill.ca

function Iblurred = Q3a(N);       


    % Making the diagram with 2 white squares, one large and one small
    % The larger square is on the left (80 by 80) and the smaller square
    % is on the right (40 by 40)
    
    I = .5*ones(N, N, 3);
    
    for j = 1:3
        r = 1;
        g = 1;
        b = 1;
        I(88: 168 , 18: 98,   1) = r ; 
        I(88: 168 , 18: 98,   2) = g ; 
        I(88: 168 , 18: 98,   3) = b ; 
    end
    
    for j = 1:3
        r = 1;
        g = 1;
        b = 1;
        I(108: 148 , 198: 238,  1) = r ; 
        I(108: 148 , 198: 238,  2) = g ; 
        I(108: 148 , 198: 238,  3) = b ; 
    end
   
    I_largesquare = I(88: 168 , 18: 98, :);
    I_smallsquare = I(108: 148 , 198: 238 ,:);
    
    Iblurred = 0.2*ones(N, N, 3);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Change values below this to add the blur in. Sharp edges because I am
% only blurring the square
% Each pixel value must be modified for the corresponding cases
    
    %   Large square, L channel blur
    %f_L = fspecial('disk',11.46);
    %Iblurred(88: 168 , 18: 98,1) = filter2(f_L, I_largesquare(: ,:,1));
    Iblurred(88: 168 , 18: 98,1) = I_largesquare(: , :,1);
  
    %   Large square, M channel blur
    %f_M = fspecial('disk',5.72);
    %Iblurred(88: 168 , 18: 98,2) = filter2(f_M, I_largesquare(: , :,2));
    Iblurred(88: 168 , 18: 98,2) = I_largesquare(: , :,2);

    %   Large square, S channel blur
    f_S = fspecial('disk',5.72);
    Iblurred(88: 168 , 18: 98,3) = filter2(f_S, I_largesquare(: , :,3));
    %Iblurred(88: 168 , 18: 98,3) = I_largesquare(: , :,3);

    %   Small square, L channel blur
    f_L = fspecial('disk',11.46);
    Iblurred(108: 148 , 198: 238,1) = filter2(f_L, I_smallsquare(: ,:,1));
    %Iblurred(108: 148 , 198: 238,1) = I_smallsquare(: , :,1);

    %   Small square, M channel blur
    f_M = fspecial('disk',11.46);
    Iblurred(108: 148 , 198: 238,2) = filter2(f_M, I_smallsquare(: , :,2));
    %Iblurred(108: 148 , 198: 238,2) = I_smallsquare(: , :,2);
    
    %   Small square, S channel blur
    f_S = fspecial('disk',17.18);
    Iblurred(108: 148 , 198: 238,3) = filter2(f_S, I_smallsquare(:, :,3));
    %Iblurred(108: 148 , 198: 238,3) = I_smallsquare(: , :,3);



    figure
    imagesc(Iblurred)
    title('on the far square')

    