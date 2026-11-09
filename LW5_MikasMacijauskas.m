%% mandatory task 
student_cell = {'John', 'Doe', 'Netherland'; ...
    'Jane', 'Smith', 'Germany'};
student_struct = cell2struct(student_cell, {'Name', 'Surname', 'Address'}, 2);

is_struct = isstruct(student_struct);

disp('Is student_struct a structure?');
disp(is_struct);
disp(student_struct);
format compact;
while true
    x = input('Enter value for x (enter 0 for both to exit): ');
    y = input('Enter value for y (enter 0 for both to exit): ');

    if x == 0 && y == 0
        disp('Exiting program.');
        break;
    end
    b = atan(y / x);

    n_values = (1:10)';
    left_side = zeros(10, 1);
    right_side = zeros(10, 1);
    difference = zeros(10, 1);

    for i = 1:10
        n = n_values(i);

        left_side(i) = n * (cos(b) + 1i * sin(b))^n;

        right_side(i) = cos(n * b) + 1i * sin(n * b);

        difference(i) = left_side(i) - right_side(i);
    end

    results_table = table(n_values, left_side, right_side, difference, ...
        'VariableNames', {'n', 'Left_Equation', 'Right_Equation', 'Difference'});

    disp('--------------------------------------------------');
    disp(results_table);
    disp('--------------------------------------------------');
end

%% complimentary task 
x = input('Enter the number of rows (x): ');
y = input('Enter the number of columns (y): ');

for iter = 1:20

    m = randi([1, x]);
    n = randi([1, y]);

    A = zeros(x, y);

    A(m, n) = NaN;

    fprintf('\n--- Iteration %d (m = %d, n = %d) ---\n', iter, m, n);
    disp(A);

    pause(2);
end
