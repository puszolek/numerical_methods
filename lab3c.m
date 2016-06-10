#Paula Kochanska
#lab3c

clear all

#macierz wejsciowa
disp("macierz wejsciowa")
B = [9 8 -2 2 -2; 7 -3 -2 7 2; 2 -2 2 -7 6; 4 8 -3 3 -1; 2 2 -1 1 4]

function B = odwracanie(B, col)
	#dodanie kolumny do macierzy
	B = [B, col];
	row = size(B, 1);
	cols = size(B, 2);
	for c = 1:cols
		if (c < cols)
			B(c, :) = B(c, :)./B(c, c);
			for r = 1:row
				if (c != r)
					B(r, :) = B(r, :) - B(r, c).*B(c, :);
				end
			end
		end
	end
	#aby zwrocic ostatnia kolumne
	B = B(:, cols);	
end

#macierz jednostkowa
A = eye(5,5);

#wywolanie dla calej macierzy diagonalnej
for i = 1:5
	out(:, i) = odwracanie(B, A(:, i));
end

#wyswietlenie macierzy
disp("wyjsciowa")
out

disp("sprawdzenie")
inv(B)

#out


#B(1, :) = B(1, :)./B(1,1);
#B(2, :) = B(2, :) - B(2, 1).*B(1, :);
#B(3, :) = B(3, :) - B(3, 1).*B(1, :);
#B(4, :) = B(4, :) - B(4, 1).*B(1, :);
#B(5, :) = B(5, :) - B(5, 1).*B(1, :)

#B(2, :) = B(2, : )./B(2,2);
#B(1, :) = B(1, :) - B(1, 2).*B(2, :);
#B(3, :) = B(3, :) - B(3, 2).*B(2, :);
#B(4, :) = B(4, :) - B(4, 2).*B(2, :);
#B(5, :) = B(5, :) - B(5, 2).*B(2, :)

#B(3, :) = B(3, :)./B(3,3);
#B(1, :) = B(1, :) - B(1, 3).*B(3, :);
#B(2, :) = B(2, :) - B(2, 3).*B(3, :);
#B(4, :) = B(4, :) - B(4, 3).*B(3, :);
#B(5, :) = B(5, :) - B(5, 3).*B(3, :)

#B(4, :) = B(4, :)./B(4,4);
#B(1, :) = B(1, :) - B(1, 4).*B(4, :);
#B(2, :) = B(2, :) - B(2, 4).*B(4, :);
#B(3, :) = B(3, :) - B(3, 4).*B(4, :);
#B(5, :) = B(5, :) - B(5, 4).*B(4, :)

#B(5, :) = B(5, :)./B(5,5);
#B(1, :) = B(1, :) - B(1, 5).*B(5, :);
#B(2, :) = B(2, :) - B(2, 5).*B(5, :);
#B(3, :) = B(3, :) - B(3, 5).*B(5, :);
#B(4, :) = B(4, :) - B(4, 5).*B(5, :)