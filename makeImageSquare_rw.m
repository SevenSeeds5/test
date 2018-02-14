function I = makeImageSquare_rw(N);     % Function for making red on white
    I = .99*ones(N, N, 3);
%    
    for j = 1:3
        r = 1;
        g = 0;
        b = 0;
        I(N/4 +1 : 3*N/4 , N/4 +1 : 3*N/4,   1) = r ; 
        I(N/4 +1 : 3*N/4 , N/4 +1 : 3*N/4,   2) = g ;
        I(N/4 +1 : 3*N/4 , N/4 +1 : 3*N/4,   3) = b ;
    end

   
    
    
    
    
    
    
    