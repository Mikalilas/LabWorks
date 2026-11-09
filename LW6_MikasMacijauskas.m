%% Mandatory 
%task1
function C = farenh2cels(F)

C = 5 * (F - 32) / 9;
end
help farenh2cels
temp_celsius = farenh2cels(100)
%task 2
function calculate_trig()
global x y;

y = sin(x) + cos(x);
end
global x y;

x = 0 : 0.2 : (2 * pi);

whos x y

calculate_trig();

figure;
plot(x, y, 'r:s', 'LineWidth', 1.5, 'MarkerSize', 6);
xlabel('x');
ylabel('sin(x) + cos(x)');
title('Plot of sin(x) + cos(x) using Global Variables');
grid on;
%% Complementary 
function result = specfunc(varargin)
    if nargin == 1
        result = varargin{1}.^2;
        
    elseif nargin == 2
        result = (varargin{1}.^2) + (varargin{2}.^3);
        
    else
        error
    end
end
out1 = specfunc(4)
out2 = specfunc(3, 2)
out3 = specfunc([1 2 3])        
out4 = specfunc(2, [1 2 3])     