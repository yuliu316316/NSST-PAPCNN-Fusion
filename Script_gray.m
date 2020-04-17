clear all;
close all;
clc;
%% NSST tool box
addpath(genpath('shearlet'));
%%
A=imread('sourceimages/s01_CT.tif');
B=imread('sourceimages/s01_MRT2.tif');
figure;imshow(A);
figure;imshow(B);

img1 = double(A)/255;
img2 = double(B)/255;

% image fusion with NSST-PAPCNN 
imgf=fuse_NSST_PAPCNN(img1,img2); 

F=uint8(imgf*255);
figure,imshow(F);
imwrite(F,'results/fused.tif');