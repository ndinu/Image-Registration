# Image-Registration
Image registration algorithm. Includes SIFT, SAR-SIFT,PSO-SIFT.

Algorithm description：
1. SIFT(Scale-invariant feature transform). Reference article: David G. Lowe, "Distinctive Image Features from Scale-Invariant Keypoints"[2004].

2. SAR-SIFT. Reference article: Flora Dellinger, Julie Delon, Yann Gousseau, Julien Michel, and Florence Tupin, "SAR-SIFT: A SIFT-Like Algorithm for SAR Images"[2015].

3. PSO-SIFT. Reference article: "Remote Sensing Image Registration with Modified SIFT and Enhanced Feature Matching".


Test data set description：
Test images are stored in the test images folder.
1. PA-1 and PA-2 are  614×611 multispectral images. This image pair can be used to test the PSO-SIFT algorithm.

2. PB-1 and PB-2 are  617×593 multispectral images. This image pair can be used to test the PSO-SIFT algorithm.

3. perspective_graf_1.ppm and perspective_graf_2.ppm are natural images with different shooting angles. This image pair can be used to test the SIFT algorithm. It should be pointed out that, perspective transformation model is needed for image pairs with different shooting angles.

4. perspective_school_1.jpg and perspective_school_2.jpg are natural images with different shooting angles. This image pair can be used to test the SIFT algorithm.

5. SAR-SIFT_1.JPG and SAR-SIFT_2.JPG are SAR images. This image pair can be used to test the SAR-SIFT algorithm.

We regret to say that part of the test of remote sensing image do not belong to the public resources.
