alpha1 = -1.5;
gamma1 = 1;


alphas = [-2, -5, -8, -11, -14, -17, -20];
gammas = [0.1, 1, 10, 100, 1000];
Ls = [1, 3, 5, 8];
angles = [0, 45, 90, 135, 180, 225, 270, 315];
is = 10;
%Change to ideal SAR IMAGE
base_image = "./../test images/Shapes/shapes_a1=-1,5_g1=1,0_a2=-2,0_g2=1,0_L=1_i=0.png" 




figure();
imshow(image_1);
B = imrotate(image_1,30);

figure();
imshow(B);