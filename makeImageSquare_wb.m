function I = makeImageSquare_wb(N);        % Function for making white on black 
    I = 0.01*ones(N, N, 3);
%    
    for j = 1:3
        r = 1;
        g = 1;
        b = 1;
        I(N/4 +1 : 3*N/4 , N/4 +1 : 3*N/4,   1) = r ; 
        I(N/4 +1 : 3*N/4 , N/4 +1 : 3*N/4,   2) = g ;
        I(N/4 +1 : 3*N/4 , N/4 +1 : 3*N/4,   3) = b ;
    end

    


   
    
    
    
    
    
    
    