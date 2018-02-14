function I = makeImageSquare_gw(N);     % Function for making green on white
    I = .99*ones(N, N, 3);
%    
    for j = 1:3
        r = 0;
        g = 1;
        b = 0;
        I(N/4 +1 : 3*N/4 , N/4 +1 : 3*N/4,   1) = r ; 
        I(N/4 +1 : 3*N/4 , N/4 +1 : 3*N/4,   2) = g ;
        I(N/4 +1 : 3*N/4 , N/4 +1 : 3*N/4,   3) = b ;
    end
    

   
    
    
    
    
    
    
    