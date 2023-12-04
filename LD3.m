clear all
clc

x = 0.1:1/22:1;
% norima funkcija
yTarget = ((1 + 0.6*sin(2*pi*x/0.7)) + 0.3*sin(2*pi*x))/2;

w0 = randn(1);
w1 = randn(1);
w2 = randn(1);
% centrų ir spindulių reikšmės
c1 = 0.1909;
c2 = 0.918;
r1 = 0.18;
r2 = 0.18;
% mokymo zingsnis
step = 0.1;

for k=1:2000
    for n=1:20
      F1=exp(-((x(n)-c1)^2)/(2*(r1^2)));
      F2=exp(-((x(n)-c2)^2)/(2*(r2^2)));

      yCal(n) = F1*w1+F2*w2+w0;
      % nuokrypis nuo norimos funkcijos
      e = yTarget(n)-yCal(n);

      w1 = w1 + step * e * F1;
      w2 = w2 + step * e * F2;
      w0 = w0 + step * e;
    end
end

x_test = linspace(0.1, 1, 200);
% testavimas koeficientu
for m = 1:200
    F1=exp(-((x_test(m)-c1)^2)/(2*(r1^2)));
    F2=exp(-((x_test(m)-c2)^2)/(2*(r2^2)));
    y_test(m) = F1*w1+F2*w2+w0;
end

figure
plot(x, yTarget,"k", x_test,y_test, "b--")
legend('Duota f-ja', 'Gauta f-ja')