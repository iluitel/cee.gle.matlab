mat01 = [8, 4; 1, 2];
mat02 = [9; 7];

res01 = mat01 * mat02;

A = [1 6 3; 4 2 8; 9 3 1];
b = [44; 82; 61];

sol01 = linsolve(A, b);
sol02 = A \ b;