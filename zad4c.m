# Paula Kochanska

clear all

# macierz wejściowa
A = [-16 9 0 0; -12 5 0 0; 0 0 6 -2; 0 0 0 4];
# wbudowana funkcja do wartości własnych
# [V,D] = eig(A);

# oblicza maksymalną wartość własną
function lambda = eigenvalue(A)
  x_0 = [1; 1; 1; 1];
  for i = i:1000
    B = A*x_0;
    a = B(1);
    x_0 = B./B(1);
  end
  lambda = a;
end

# maksymalna wartość własna
x = eigenvalue(A);

for j = j:3
  A(j+1,j+1) = A(j+1,j+1)-x;
end

A