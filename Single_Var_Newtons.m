%TODO
% Handle case where fprimex = 0
% Get different function type for performance issue/script hanging

syms x;
Tol = 0.00000001;
fxn = input('Give an equation in x: ');%,'s');
x = input('Enter the initial guess: ');
fprime = diff(fxn)
%fx = subs(fxn)
%fprimex = subs(fprime)
%xip1 = x - fx/fprimex
%x = xip1
i = 0;
dx = 1;
fprintf('step       x           dx         f(x)\n');
fprintf('----   ---------   -----------   ----------\n');

while (dx > Tol || abs(fx) > Tol)
    fx = subs(fxn);
    fprimex = subs(fprime);
    xip1 = x - (fx/fprimex);
    fprintf('%3i %12.8f %12.8f %12.8f\n', i, x, dx, xip1);
    dx = abs(x-xip1);
    x = xip1;
    i = i + 1;
end

backwarderror = subs(fxn);
fprintf('Backward error = %12.8f\n', backwarderror);
