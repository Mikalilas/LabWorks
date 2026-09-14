%% main task
x = 1:32;
y = x.^2;
plot(x, y,'o-r',x, y/3, 'xb')
title('dvi funkcijos')
xlabel('X-ai')
ylabel('F_1[-o-]  | f_2 [-x-]')
%% complementary task
n=5;
v=n+4:0.5:n+4+0.5*n;
a=n:n+8;
a=reshape(a,3,3).';
disp('n =')
disp(n)
disp('vector v =')
disp(v)
disp('matrix a =')
disp(a)
%task 4
a1 = a(3,2);
a2 = a(2:3,1:2);
a3 = a([1 3],[1 3]);

disp('a1 =')
disp(a1)

disp('a2 =')
disp(a2)

disp('a3 =')
disp(a3)
%task 5
v = v(1:3);
b = [a v.'];

disp('Matrix B =')
disp(b)