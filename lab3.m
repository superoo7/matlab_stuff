% set time to be 4000 HZ
cover_time = ( 1 / 4000 );
% Generate 51 samples
tt = -cover_time:cover_time/25:cover_time; 

% einstein birthday: 14/3/1879
A1 = 139; % your age
M = 3; % birthday month
D = 14; % birthday day
T = cover_time; % period

% x1
temp1 = 1*10^-4;

tm1 = (37.2/M)*T;
x1 = A1*cos(2*pi*4000*(tt-tm1));
xtemp1 = A1*cos(2*pi*4000*(tt-tm1+temp1));

% x2
temp2 = 0.1*10^-4;

A2 = 1.2*A1;
tm2 = - (41.3/D)*T;
x2 = A2*cos(2*pi*4000*(tt-tm2));
xtemp2 = A2*cos(2*pi*4000*(tt-tm2+temp2));

subplot(4,1,1);
plot(tt, x1, 'b-', tt, xtemp1, 'r--'); grid on; grid minor
title('x1');

subplot(4,1,2);
plot(tt, x2, 'b-', tt, xtemp2, 'r--');grid on; grid minor;
title('x2');

x3 = x1 + x2;
xtemp3 = xtemp1 + xtemp2;

new_x3 = 150*cos(2*pi*4000*(tt - 0.5*10^-4));

subplot(4,1,3);
plot(tt, x3, 'b-', tt, xtemp3, 'r--', tt, new_x3, 'g--');grid on; grid minor;
title('x3 = x1 + x2');

% make title
% https://stackoverflow.com/questions/33593964/title-over-group-of-subplots
a = axes;
t = title('NAME: Einstein');
a.Visible = 'off';
t.Visible = 'on';

% x1
% A1 amplitude 139
% time shift: +1*10^-4
x1calc = 1*10^-4*1*10^-4*2*pi*4000

% 139<1*10^-4

% x2
% A2 amplitude 166.8
% time shift: +0.1*10^-4
x2calc = 0.1*10^-4*1*10^-4*2*pi*4000

% 166.8<0.1*10^-4

% x3 
% time shift: 0.5*10^-4
x3calc = -0.5*10^-4*1*10^-4*2*pi*4000

% 139*cos(2*pi*4000*t+1*10^4) + 166.8*cos(2*pi*4000*t+0.1*10^-4) +
% j(139*sin(2*pi*4000*t+1*10^4) + 166.8*sin(2*pi*4000*t+0.1*10^-4))

x1complex = 139*(cos(2*pi*4000*tt+1*10^4) +  sin(2*pi*4000*tt+1*10^-4)*j);
x2complex = 166.8*(cos(2*pi*4000*tt+0.1*10^-4) + sin(2*pi*4000*tt+0.1*10^-4)*j);

%
x1exp = 139*exp(j*(2*pi*4000*tt-1*10^4));
x2exp = 166.8*exp(j*(2*pi*4000*tt-0.1*10^4));


subplot(4,1,4);
plot(tt, real(x1exp), 'g-', tt, real(x2exp), 'r-', tt, real(x1exp + x2exp));
