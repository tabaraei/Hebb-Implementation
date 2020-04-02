clc;
clear;

x = [
      0.2 0.5 0.1;
      0.1 0.7 0.8;
      -0.1 0.6 0.9;
      -0.8 0.5 0.1;
      0.3 0.1 0.6;
      -0.7 0.9 0.1
];

y = [ -1 1 1 -1 1 -1 ];
w = zeros(1,size(x,2));
bias = 1;
b = 0;

for i=1:size(x,1)
    b = b + bias*y(i);
    for j=1:size(x,2)
        w(j) = w(j) + x(i,j)*y(i);
    end
end

fprintf('w1 = %d\n', w(1));
fprintf('w2 = %d\n', w(2));
fprintf('w3 = %d\n', w(3));
fprintf('b = %d\n', b);