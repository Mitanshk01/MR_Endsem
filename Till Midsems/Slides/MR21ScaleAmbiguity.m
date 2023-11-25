X = [ 
      0, 0, 4;
      1, 0, 3;
     -0.2, 0, 5;
     2, 0, 15;
     0.3, 2, 6;
     0.2, 4, 7;
     1.25, 0, 6.5;
     1.05, 0, 10;
     2.1, 1.1, 8.25;
     
    ];

Xs = X.*2; %X scaled twice
Ka = [ 351.787   	0   	315.900;
    	0       351.787     238.966;
    	0       	0       	1];

Kb = eye(3);
    
theta = 10;
R = [cosd(theta)    0    sind(theta); 
        0           1       0;
     -sind(theta)   0   cosd(theta)]
 
T = [0.5; 1; 1];
Ts = T.*2; %T scaled twice

P1a = Ka*eye(3,4);
P2a = Ka * [R T];
P2as = Ka * [R Ts];
P1b = Kb*eye(3,4);
P2b = Kb * [R T];
P2bs = Kb*[R Ts];

%Image plane co-ordinates
x1 = []; x2 = [];
x1s = []; x2s = [];

for i=1:size(X, 1)
    p = [X(i,:)'; 1]; %4 X 1
    ps = [Xs(i,:)'; 1]; %4 X 1
    x1(:, end+1) = P1a*p; %(3 X 4)X(4 X 1) This 3X1 vector is kept adding/appending
    x2(:, end+1) = P2a*p; %to the columns. So if there are 6 columns so far, end = 6. This 3X1 vector gets appended to the last column
    
    
    x1s(:, end+1) = P1a*ps; %(3 X 4)X(4 X 1)
    x2s(:, end+1) = P2as*ps;

end


x1(1,:) = x1(1,:) ./ x1(3,:) ;
x2(1,:) = x2(1,:) ./ x2(3,:) ;

x1(2,:) = x1(2,:) ./ x1(3,:) ;
x2(2,:) = x2(2,:) ./ x2(3,:) ;

x1(3,:) = x1(3,:) ./ x1(3,:) ;
x2(3,:) = x2(3,:) ./ x2(3,:) ;

x1s(1,:) = x1s(1,:) ./ x1s(3,:) ;
x2s(1,:) = x2s(1,:) ./ x2s(3,:) ;

x1s(2,:) = x1s(2,:) ./ x1s(3,:) ;
x2s(2,:) = x2s(2,:) ./ x2s(3,:) ;

x1s(3,:) = x1s(3,:) ./ x1s(3,:) ;
x2s(3,:) = x2s(3,:) ./ x2s(3,:) ;

fprintf('actual\n');
x1
x1s
x2
x2s
%Essentially we show X and Xs project to the same image pixels x1 and x1s
%or x2 and x2s via P1a, P1as and P2a, P2as respectively
x1a = x1(1:2,:);% 2 X n
x2a = x2(1:2,:);

x1at = x1a'; % n X 2
x2at = x2a';
