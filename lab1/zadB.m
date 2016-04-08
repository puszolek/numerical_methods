#Paula Kochanska
#lab1,czesc B,zad4

clear all

#tworzenie macierzy
A = ones(10,20);
A(1:5, :) = 2;
A(6:10, :) = 5;

#a)
A(4:6, :) = 20;

#b)
A(6:10,12:14) = A(6:10,12:14).^2;

#c)
[row col] = size(A);
disp("rows: ")
disp(row)

disp("columns: ")
disp(col)

#d)
A(12,15) = 100;

#wyswietlenie macierzy
A