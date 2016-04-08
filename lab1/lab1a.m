#funkcja

#clear all

function sil = silnia(x)
	if (x <= 0)
		sil = 1;
	else
		sil = x*silnia(x-1);
	end
end

silnia(2)

#inline
f = @(x) x.^2;
f(1)
i=1:10;
f(i)
#plot(i, f(1))
#scatter(i, f(i))