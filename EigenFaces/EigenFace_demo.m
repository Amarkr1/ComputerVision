clear all;
close all;

load ev.mat
load faceR

v = faceR(5, 2:100)';
i = eigenfaces'*v + mean_face';
figure
imagesc(reshape(i, 128, 128)'); colormap(gray(256));

fid=fopen('../dataset/1227'); 
I = fread(fid);
figure
imagesc(reshape(I, 128, 128)'); colormap(gray(256));