% set time to be 4000 HZ
cover_time = ( 1 / 4000 );
% Generate 100 samples
tt = -cover_time:cover_time/99.5:cover_time; 

% einstein birthday: 14/3/1879
A1 = 139; % your age
M = 3; % birthday month
D = 14; % birthday day
T = tt; % period

% x1
tm1 = (37.2/M)*T;
x1 = A1*cos(2*pi*4000*(tt-tm1));

% x2
A2 = 1.2*A1;
tm2 = - (41.3/D)*T;
x2 = A2*cos(2*pi*4000*(tt-tm2));

subplot(3,1,1);
plot(tt, x1);
title('x1');

subplot(3,1,2);
plot(tt, x2);
title('x2');

x3 = x1 + x2;

subplot(3,1,3);
plot(tt, x3);
title('x3 = x1 + x2');

% make title
% https://stackoverflow.com/questions/33593964/title-over-group-of-subplots
a = axes;
t = title('NAME: Einstein');
a.Visible = 'off';
t.Visible = 'on';

% x1
% amplitude 139
% 

% x2
% amplitude 166.8
