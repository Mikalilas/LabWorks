%% mandotory task

% --- Task 1(a) ---
figure(1);
x1 = 0:0.5:(2*pi);
f1 = sin(x1) + cos(x1).^2;

% Display function values using red dots with yellow center
plot(x1, f1, 'o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'y', 'LineWidth', 1.5);
grid on;
title('Task 1a: f(x) = sin(x) + cos^2(x)');
xlabel('x');
ylabel('y');
legend('f(x) = sin(x) + cos^2(x)', 'Location', 'best');

% Set limits according to min and max values in the first figure
axis([min(x1), max(x1), min(f1), max(f1)]);


% --- Task 1(b) ---
figure(2);
% Since x^e, x^(2e), x^(3e) are equal when x = 0 or x = 1,
% we set x from 0 to 1 to cover common values of all functions.
x2 = linspace(0, 1, 100); 

f2_1 = x2.^exp(1);
f2_2 = x2.^(2*exp(1));
f2_3 = x2.^(3*exp(1));

plot(x2, f2_1, 'r-', 'LineWidth', 1.5); hold on;
plot(x2, f2_2, 'g--', 'LineWidth', 1.5);
plot(x2, f2_3, 'b-.', 'LineWidth', 1.5);
hold off;

grid on;
title('Task 1b: Common values of f(x) = x^{e}, x^{2e}, x^{3e}');
xlabel('x');
ylabel('y');
legend('f(x) = x^e', 'f(x) = x^{2e}', 'f(x) = x^{3e}', 'Location', 'best');

% Common values response:
% Yes, these functions have common values at x = 0 (y = 0) and x = 1 (y = 1).


%% Task 2: Preparation of specialized plots

x3 = -2*pi : 0.4 : 2*pi;
y3 = x3.^3 + sin(x3);

% --- Task 2(a): Quiver / Vector plot ---
figure(3);
subplot(1, 2, 1);
% Vectors on a horizontal line (u = 0 for horizontal component, v = y3 for vertical)
u = zeros(size(x3)); 
v = y3; 
quiver3(x3, zeros(size(x3)), zeros(size(x3)), u, zeros(size(x3)), v, 0, 'b');
grid on;
xlabel('x');
ylabel('y');
zlabel('z');
title('Task 2a: Vector Representation');
axis([-8 8 -8 8 -250 250]);

% --- Task 2(b): Bar plot ---
subplot(1, 2, 2);
bar(x3, y3, 'k');
grid on;
xlabel('x');
ylabel('y');
title('Task 2b: Bar Representation');
axis([-8 8 -250 250]);
%%complimentary task
%% 1. Sample Data Setup (Replace/integrate with your Task 3 of Laboratory Work 2 data)
t = linspace(0, 2*pi, 200);                    % Time vector
signal_orig = 10 * sin(t) + 3 * cos(3*t);        % Original signal
signal_filt = movmean(signal_orig, 5);          % Filtered signal

U1 = 4;   % Threshold 1
U2 = -4;  % Threshold 2

%% 2. Signal Calculations
% Identify values exceeding threshold U1
exceed_idx = signal_orig > U1;

% Find global maximum and minimum locations
[max_val, max_idx] = max(signal_orig);
[min_val, min_idx] = min(signal_orig);

%% 3. Plotting
figure('Name', 'Graphical Representation of Signals', 'NumberTitle', 'off');

% --- Graph (a): Original and Filtered Signals with Thresholds ---
subplot(1, 2, 1); % Arrange horizontally (1 row, 2 columns)
plot(t, signal_orig, 'b-', 'LineWidth', 2, 'DisplayName', 'Original Signal'); hold on;
plot(t, signal_filt, 'r:', 'LineWidth', 2, 'DisplayName', 'Filtered Signal');

% Horizontal lines for thresholds U1 and U2
yline(U1, 'k--', 'LineWidth', 1.5, 'DisplayName', 'Threshold U_1');
yline(U2, 'm--', 'LineWidth', 1.5, 'DisplayName', 'Threshold U_2'); % Purple dashed line for U2
hold off;

grid on;
title('Original and Filtered Signals with Thresholds');
xlabel('Time (s)');
ylabel('Voltage (V)');
legend('Location', 'northeast'); % Upper-right corner


% --- Graph (b): Discrete Signal > U1 with Min/Max Markers ---
subplot(1, 2, 2);

% Discrete signal format (stem plot) for original signal exceeding U1
stem(t(exceed_idx), signal_orig(exceed_idx), 'b', 'LineWidth', 1.5, 'DisplayName', 'Signal > U_1'); hold on;

% Marker for Maximum voltage value (Green circle marker, MarkerSize 9)
plot(t(max_idx), max_val, 'go', 'MarkerSize', 9, 'MarkerFaceColor', 'g', 'LineWidth', 1.5, 'DisplayName', 'Max Voltage');

% Marker for Minimum voltage value
plot(t(min_idx), min_val, 'ro', 'MarkerSize', 9, 'MarkerFaceColor', 'r', 'LineWidth', 1.5, 'DisplayName', 'Min Voltage');
hold off;

grid on;
title('Discrete Signal Exceeding U_1 and Extreme Values');
xlabel('Time (s)');
ylabel('Voltage (V)');
legend('Location', 'northeast'); % Upper-right corner

% Set axis limits so all data and threshold lines are clearly visible
xlim([min(t) max(t)]);
ylim([min(signal_orig)-2, max(signal_orig)+2]);