
%%mandatory task
% Task 1: Vectors
% a)
v_a = (-2*pi : pi/4 : 2*pi)';

% b)
v_b = tan(v_a);

% c)
v_c = v_a ./ v_b;

disp('--- Task 1 Results ---');
disp('Vector A:'); disp(v_a);
disp('Vector B (tan):'); disp(v_b);
disp('Vector C (a ./ b):'); disp(v_c);


% Task 2: Matrices

% a)
Z = randn(2, 3);

% b)
Z_trans = Z';

% c)
A_mat = randn(3, 1);
M_combined = [Z_trans, A_mat];

% d)
matrix_det = det(M_combined);

disp('--- Task 2 Results ---');
disp('Matrix Z (2x3):'); disp(Z);
disp('Transposed Z (3x2):'); disp(Z_trans);
disp('Matrix A (3x1):'); disp(A_mat);
disp('Combined 3x3 Matrix:'); disp(M_combined);
disp('Determinant:'); disp(matrix_det);

% Task 3: Practical Applications

A = 6;        
f = 2;         
sigma = 1.5;  
U1 = 4;       
U2 = 2;       

t = 0 : 0.005 : 2;

s = A * cos(2 * pi * f * t);
n = sigma * randn(size(t));

s_noisy = s + n;

% a)
samples_exceed = s_noisy(s_noisy > U1);

% b)
s_filtered = s_noisy;
s_filtered(abs(s_filtered) < U2) = 0;

% c)
num_unfiltered = length(s_noisy);

% d)
num_exceed = length(samples_exceed);

% e)
min_val = min(s_filtered);
max_val = max(s_filtered);

% Display Task 3 results
disp('--- Task 3 Results ---');
fprintf('c) Samples in unfiltered signal: %d\n', num_unfiltered);
fprintf('d) Samples exceeding U1 (4V): %d\n', num_exceed);
fprintf('e) Minimum voltage of filtered signal: %.4f V\n', min_val);
fprintf('   Maximum voltage of filtered signal: %.4f V\n', max_val);
%% additional task
A = input('Enter vector A in brackets, e.g., [1, 2, 3, 4]: ');
B = [A(1:end), A(end:-1:1)];
disp('vector B is:');
disp(B);