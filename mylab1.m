tt = -1 : 0.01 : 1;
xx = cos( 5*pi*tt );
zz = 1.4*exp(j*pi/2)*exp(j*5*pi*tt);
%<--- plot a sinusoid
plot( tt, xx, 'b-', tt, real(zz), 'r--' ), grid on
title('TEST PLOT of a SINUSOID')
xlabel('TIME (sec)')