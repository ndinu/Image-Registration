alpha1 = -1.5;
gamma1 = 1;


alphas = [-2, -5, -8, -11, -14, -17, -20];
gammas = [0.1, 1, 10, 100, 1000];
Ls = [1, 3, 5, 8];
angles = [0, 45, 90, 135, 180, 225, 270, 315];
is = 10;
%Change to ideal SAR IMAGE
base_image = './../test images/Shapes/shapes_a1=-1,5_g1=1,0_a2=-2,0_g2=1,0_L=1_i=0.png';

alpha1= "-1,5";
gamma1= "1,0";
gamma2= "1,0";

for alpha= 1:size(alphas,2)
    for l= 1:size(Ls,2)
        for i = 0:is-1
            current_image = strjoin(['./../test images/Shapes/shapes_a1=',alpha1,'g1=',gamma1,'_a2=',num2str(alpha),',0_g2=',gamma2,'_L=',num2str(l),'_i=',num2str(i),'.png'],"");
            [matches] = sar_sift(base_image, current_image);
            array_matches(i+1) = matches;
        end
        
        
    end
end



%[matches] = sar_sift('./../test images/SAR-SIFT_1.JPG', './../test images/SAR-SIFT_2.JPG');
%disp(matches);