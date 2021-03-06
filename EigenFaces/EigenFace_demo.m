clear all;
close all;

load ev.mat
load faceR

figure
subplot(3,3,1)
fid=fopen('../dataset/1227'); 
I = fread(fid);
imagesc(reshape(I, 128, 128)'); colormap(gray(256));
title('Original Image');
eigen_comp = [30,40,50,60,70,80,90,99];
for loop=1:8
    subplot(3,3,loop+1)
    v = faceR(5, 2:100)';
    e = eigenfaces(1:eigen_comp(loop),:);
    i = e'*v(1:eigen_comp(loop)) + mean_face';
    imagesc(reshape(i, 128, 128)'); colormap(gray(256));
    title(['Reconstructed Image:' int2str(eigen_comp(loop))])
end