clear all

function f = f(x)
	f = 2./(exp(-(15+x.^2)./3));
end

i = 1:10
f(i)