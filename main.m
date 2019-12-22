addpath('src');

loc1 = 'TestCases\Case1\1.1.bmp';
loc2 = 'TestCases\Case2\2.1.bmp';
loc3 = 'TestCases\Case3\3.1.bmp';
loc4 = 'TestCases\Case3\3.3.bmp';
loc5 = 'TestCases\Case4\4.1.bmp';
loc6 = 'TestCases\Case4\4.4.bmp';


figure, imshow(detect_qr(imread(loc1))), title(replace(loc1, '\', '-'));
figure, imshow(detect_qr(imread(loc2))), title(replace(loc2, '\', '-'));
figure, imshow(detect_qr(imread(loc3))), title(replace(loc3, '\', '-'));
figure, imshow(detect_qr(imread(loc4))), title(replace(loc4, '\', '-'));
figure, imshow(detect_qr(imread(loc5))), title(replace(loc5, '\', '-'));
figure, imshow(detect_qr(imread(loc6))), title(replace(loc6, '\', '-'));
figure, imshow(detect_qr(imread('TestCases\qr1.jpg')));
figure, imshow(detect_qr(imread('TestCases\qr2.jpg')));
figure, imshow(detect_qr(imread('TestCases\qr3.jpg')));
figure, imshow(detect_qr(imread('TestCases\qr4.jpg')));
figure, imshow(detect_qr(imread('TestCases\qr5.jpg')));

