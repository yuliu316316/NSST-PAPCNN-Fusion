function [Abeta,Bbeta] = weighting(matrixA,matrixB)
% aga=LAG(matrixA);
% agb=LAG(matrixB);
aga=EGI(matrixA);
agb=EGI(matrixB);
% aga=nlfilter(matrixA,[5 5],@gradientenergy);
% agb=nlfilter(matrixB,[5 5],@gradientenergy);
Abeta=1./(1+exp(-aga));
Bbeta=1./(1+exp(-agb));


