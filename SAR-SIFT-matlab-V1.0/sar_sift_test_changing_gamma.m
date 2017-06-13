close all;
clear all;

gammas = [0.1, 1, 10, 100, 1000];
Ls = [1, 3, 5, 8];
is = 10;
%Change to ideal SAR IMAGE
base_image = './../test images/Shapes/shapes_a1=-1,5_g1=1,0_a2=-20,0_g2=1,0_L=8_i=399.png';
alpha1= "-1,5";
gamma1= "1,0";
alpha2= "-3,0";
array_matches = zeros(is,1);
datos = zeros(size(gammas,2)*size(Ls,2),4);
for gamma= 1:size(gammas,2)
    for l= 1:size(Ls,2)
        for i = 0:is-1
            strjoin(['./../test images/Shapes/shapes_a1=',alpha1,'_g1=',gamma1,'_a2=',alpha2,'_g2=',strrep(strcat([strrep(num2str(gammas(gamma)),'.',','),',0']),',1,0',',1'),'_L=',num2str(Ls(l)),'_i=',num2str(i),'.png'],"")
            current_image = strjoin(['./../test images/Shapes/shapes_a1=',alpha1,'_g1=',gamma1,'_a2=',alpha2,'_g2=',strrep(strcat([strrep(num2str(gammas(gamma)),'.',','),',0']),',1,0',',1'),'_L=',num2str(Ls(l)),'_i=',num2str(i),'.png'],"");
            [matches_quantity] = sar_sift(base_image, char(current_image));
            array_matches(i+1) = matches_quantity;
        end
        deviation = std(array_matches);
        average = mean(array_matches);
        datos((size(gammas,2))*(l-1)+gamma,1) = Ls(l);
        datos((size(gammas,2))*(l-1)+gamma,2) = gammas(gamma);
        datos((size(gammas,2))*(l-1)+gamma,3) = average;
        datos((size(gammas,2))*(l-1)+gamma,4) = deviation;
    end
end

datos
csvwrite('gamma_changes.csv',datos)