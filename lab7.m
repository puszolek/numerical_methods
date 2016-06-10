clear all

function f = f(x)
	if (x >1 && x<2)
		f = 2;
	else
		f = 0.2;
	end
end

function F = F(u)
	F = 0.3*u;
end

Xmax = 6; #maksymalna wartosc x
Tmax = 1; #maksymalna wartosc t
dx = 0.05;
dt = dx/5;
Ux = Xmax/dx; #wymiar x
Ut = Tmax/dt; #wymiar t
alfa = dt/(2*dx);
alfa2 = (dt^2)/(2*(dx^2));

#XT = zeros(Ux, Ut);

for i=1:Ux
	XT(i,1) = f(i*dx);
end

for i=1:Ux
	XT(1,i) = f(0);
	XT(Ux, i) = f(Xmax);
end

for  t = 1:(Ut-1) 
	for x = 2:(Ux-1)
		XT(x, t+1) = XT(x,t)-alfa*(F( XT(x+1,t) ) - F( XT(x-1,t) ));
	end
end

XT1(1:Ux)=XT(:,Ut);

for  t = 1:(Ut-1) 
	for x = 2:(Ux-1)
		XT(x, t+1) = XT(x,t) - alfa*( F(XT(x+1,t)) - F(XT(x-1,t)) ) - alfa2*( F(XT(x+1,t)) + F(XT(x-1,t)) - 2*F(XT(x,t)) );
	end
end

for x = 1:Ux
	Xes(x) = x*dx;
	funkcja(x) = f(dx*x - Tmax*0.3); 
end

XT2(1:Ux)=XT(:,Ut);


plot(Xes(:), XT2(:), Xes(:), XT1(:), Xes(:), funkcja(:));

#plot(XT(:,Ut), XT1)