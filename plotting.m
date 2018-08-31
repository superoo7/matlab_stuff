xx = [ zeros(1,3), linspace(0,1,5), ones(1,4) ];
yy = xx; 
yy(2:2:length(xx)) = pi / 3;