function e = WLE(matrix)
um=3;
w=(1/16)*[1,2,1;2,4,2;1,2,1];
e = conv2(es2(matrix.*matrix, floor(um/2)), w, 'valid'); 






