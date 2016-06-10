# Paula Kochanska
# lab4

clear all

function [q,r] = qer(input)
	A = input;
	dim = size(A, 1);
	for i = 1:dim
		e = [0; 0; 0; 0];
		e(i,1) = 1;
		B = A;
		if i > 1
			B(1:i-1,i) = 0;
		end
		v = B(:,i) + norm(B(:,i))*e;
		vt = transpose(v);
		x = vt*v;
		M = v*vt;
		H = eye(dim, dim)-(2/x)*M;
		A = H*A;
	end
	r = A;
	q = input/r;
	
end

# macierz wejściowa
disp("Macierz wejsciowa")
A = [-16 9 0 7; -12 5 0 0; 0 0 6 -2; 0 0 0 4]

[Q,R] = qer(A)
disp("Nasze obliczone A = Q*R")
Q*R

disp("Wbudowane Q i R")
[q, r] = qr(A);
q 
r