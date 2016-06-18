clear all;

function f = f(x)
  f = sqrt(-x^2+sqrt(-x^2*(3*x^2-2*x-1))+x)./sqrt(2);
end

xMax = 1000;

for i = 1:xMax
  Xes(i) = i/xMax;
end

for i = 1:1000
  fun(i) = f((i-1)/1000);
end

plot(Xes(:), fun);

#random
#unifrnd(0,1)
y_max = 0.7;
y_min = 0;
x_max = 1;
x_min = 0;
iterations = 100000;
p = 0;

for i = 1:iterations
  y = unifrnd(y_min, y_max);
  x = unifrnd(x_min, x_max);
  
  if y <= f(x)
    p = p+1;
  end
end

P = p*y_max*x_max/iterations
P*2
