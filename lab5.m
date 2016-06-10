clear all

#dane wejsciowe
x = [1 6 10 15 17 20];
y = [10 3 7 15 23 40];

#x = [1 2 4 5 7]
#y = [52 5 -5 -40 10]

function a = newton_interpolation(x,y)
	x
	y
	#ktorego stopnia wielomian
	len = length(x) -1;
	#pierwsza kolumna danych do dalszej obrobki
	for i = 1:len
		data(i,1) = (y(i+1)-y(i))/(x(i+1)-x(i));
	end
	#kolejne kolumny zawierajace kolejne ilorazy roznicowe
	for i = 2:len
		for j = 1:(len-i+1)
			data(j,i) = (data(j+1,i-1)-data(j,i-1))/(x(j+i)-x(j));
		end
	end
	#pierwszy element to y1
	a(1) = y(1);
	#elementy z pierwszego wiersza macierzy data to kolejne wspolczynniki
	for i = 1:(len)
		a(i+1) = data(1,i);
	end
	#lwyjsciowe wspolczynniki
	a;
	data
endfunction

a = newton_interpolation(x,y)

polfit = polyfit(x,y,5)

xa = [1:20];
ya = polyval(polfit,xa);

plot(x,y,"d", xa,ya)