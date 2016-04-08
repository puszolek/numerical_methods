# Paula Kochanska 
# lab2

clear all
disp("Regula Falsi - zadanie b")
disp("Podaj przedzial (a,b) oraz dokladnosc obliczen.")

# dany wielomian
function f = f(x)
  f = 4*(x.^3)-3*(x.^2)+x-3;
end

# liczymy xapp
function xapp = g(a,b)
  xapp = (a*f(b)-b*f(a))/(f(b)-f(a));
end

# poczatkowy zakres
a = input("Wpisz wartosc a: ");
b = input("Wpisz wartosc b: ");
a_const = a;
b_const = b;

# dokladnosc
epsilon = input("Podaj dokladnosc epsilon: ");
tmp = 0;

for i = 1:1000

  iloczyn = f(a)*f(b);
  
  # brak szans na pierwiastek
  if iloczyn > 0
    disp("Brak pierwiastka na danym przedziale")
    break
  
  # pierwiastek na danym przedziale, szukamy
  else 
    x = g(a,b);
    tmp(i) = x;
    if abs(f(x)) < epsilon
      disp("Znaleziono pierwiastek!")
      plot(tmp, f(tmp), "d", a_const:0.1:b_const, f(a_const:0.1:b_const));
      break
    elseif (f(x)*f(a)) > 0
      a = x;
    elseif (f(x)*f(b) > 0)
      b = x;
    end
  end
end

printf("Rowiazanie x = %.15f, f(x) = %.15f", x, f(x))
disp("")











