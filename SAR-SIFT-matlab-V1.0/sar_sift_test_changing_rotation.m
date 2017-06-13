

Ls = [1, 3, 5, 8];
angles = [0, 45, 90, 135, 180, 225, 270, 315];
is = 10;
%Change to ideal SAR IMAGE
base_image = './../test images/Shapes/shapes_a1=-1,5_g1=1,0_a2=-20,0_g2=1,0_L=8_i=399.png';
alpha1= "-1,5";
gamma1= "1,0";
alpha2= "-3,0";
gamma2= "1,0";
array_matches = zeros(is,1);
datos = zeros(size(gammas,2)*size(Ls,2),4);
for angle= 1:size(angles,2)
    for l= 1:size(Ls,2)
        for i = 0:is-1
            current_image = strjoin(['./../test images/Shapes/shapes_a1=',alpha1,'_g1=',gamma1,'_a2=',alpha2,'_g2=',gamma2,'_L=',num2str(Ls(l)),'_i=',num2str(i),'.png'],"");
            [matches_quantity] = sar_sift(base_image, char(current_image), angles(angle));
            array_matches(i+1) = matches_quantity;
        end
        deviation = std(array_matches);
        average = mean(array_matches);
        datos((size(angles,2))*(l-1)+angle,1) = Ls(l);
        datos((size(angles,2))*(l-1)+angle,2) = angles(angle);
        datos((size(angles,2))*(l-1)+angle,3) = average;
        datos((size(angles,2))*(l-1)+angle,4) = deviation;
    end
end

datos
csvwrite('rotation_changes.csv',datos)