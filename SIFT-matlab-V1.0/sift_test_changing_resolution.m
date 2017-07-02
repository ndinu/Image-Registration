close all;
clear all;


is = 50;
%Change to ideal SAR IMAGE
base_image = './../test images/Shapes/shapes_a1=-1,5_g1=1,0_a2=-20,0_g2=1,0_L=8_i=399.png';
masks = [2,4,8,16];
array_matches = zeros(is,1);
datos = zeros(size(masks,2),3);
for mask= 1:size(masks,2)
    for i = 0:is-1
        current_image = strjoin(["./../test images/resol-shapes/res_",num2str(masks(mask)),"_",num2str(i),".png"],"");
        [matches_quantity] = sift(base_image, char(current_image));
        array_matches(i+1) = matches_quantity;
        mask
        i
    end
    deviation = std(array_matches);
    average = mean(array_matches);
    datos(mask,1) = masks(mask);
    datos(mask,2) = average;
    datos(mask,3) = deviation;
end

datos
csvwrite('sift_resolution_changes.csv',datos)