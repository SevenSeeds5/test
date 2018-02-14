function I = makeImageSquare_rg(N);         % Function for making red on green

    for i = 1:3
        r = 0;
        g = 1;
        b = 0;
        I(1: N, 1:N, 1) = r;
        I(3*N/4 + 1 : N, 3*N/4 + 1: N, 1) = r; 
        I(1: N, 1:N, 2) = g;
        I(3*N/4 + 1 : N, 3*N/4 + 1: N, 2) = g; 
        I(1: N, 1:N, 3) = b;
        I(3*N/4 + 1 : N, 3*N/4 + 1: N, 3) = b; 
    end
   
%    
    for j = 1:3
        r = 1;
        g = 0;
        b = 0;
        I(N/4 +1 : 3*N/4 , N/4 +1 : 3*N/4,   1) = r ; 
        I(N/4 +1 : 3*N/4 , N/4 +1 : 3*N/4,   2) = g ;
        I(N/4 +1 : 3*N/4 , N/4 +1 : 3*N/4,   3) = b ;
    end
    
    
    
    
    
    
    
    