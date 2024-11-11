clc;
clearvars;
close all;

sigma_side = 5;
width = 300;
height = 500;

sigma_area = sigma_side * sqrt(width^2 + height^2);

fprintf("The uncertainty of the area for width=%d and height=%d is : %.4f\n", width,height,sigma_area);

width_vector = 1:50:10000;
height_vector = 1:50:10000;
size = length(height_vector);
sigma_area_surf = zeros(size, size);

for i=1:size
    for j=1:size
        sigma_area_surf(i, j) = sigma_side*sqrt(width_vector(i)^2 + height_vector(j)^2);
    end
end

figure('Name', "Values of Uncertainty");
surf(sigma_area_surf);
title("Values of Uncertainty");
xlabel("Width");
ylabel('Height');
zlabel('Uncertainty');