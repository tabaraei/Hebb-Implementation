clc;
clear;

x = bipolarBuilder(2);
y = [1 -1 -1 -1];
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
fprintf('b = %d\n', b);