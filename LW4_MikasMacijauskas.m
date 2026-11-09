% mandatory task 
x = (2 * rand(1, 200) - 1) .* sqrt(pi / 2);
y = (2 * rand(1, 200) - 1) .* sqrt(pi / 2);

[X, Y] = meshgrid(sort(x), sort(y));

Z = sin(X.^2 + Y.^2);
figure;
surf(X, Y, Z);

colormap('jet');
shading interp; 

view(50, 30);

xlabel('x-axis');
ylabel('y-axis');
zlabel('f(x,y)');
title('Surface Plot of f(x,y) = sin(x^2 + y^2)');
grid on;

x = linspace(-2, 1, 100);
y = linspace(-2, 1, 100);
[X, Y] = meshgrid(x, y);

Z = 1 - 2*X.^2 - 3*Y.^2;

figure;
surf(X, Y, Z);

colormap('cool');
shading flat;

view(60, 30);

xlabel('x-axis');
ylabel('y-axis');
zlabel('f(x,y)');
title('Surface Plot of f(x,y) = 1 - 2x^2 - 3y^2');
grid on;
%% complementary task 
figure; 
[X, Y] = meshgrid(linspace(-2, 2, 100));
s = surf(X, Y, 1 - (X.^2 + Y.^2), 'FaceColor', 'blue', 'EdgeColor', 'none');
alpha(s, 0.5);
xlabel('x-axis'); ylabel('y-axis'); zlabel('z(x,y)'); 
title('Transparent Blue Surface Plot'); 
grid on; view(3);