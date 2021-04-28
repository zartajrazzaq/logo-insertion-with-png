 [logo, map, alpha] = imread('logo.png');
 jack = imread('ab2.jpg');
 logoResize = imresize(logo, 0.1, 'bilinear');
 alphaResize = imresize(alpha, 0.1, 'bilinear');
 alphaResize = repmat(alphaResize, [1 1 3]);
 alphaResize = im2double(alphaResize);

 rows = size(logoResize, 1);
 cols = size(logoResize, 2);
 jack(1:rows,1:cols,:) = uint8(alphaResize.*double(logoResize) + ...
                       (1-alphaResize).*double(jack(1:rows,1:cols,:)));
 figure; 
 imshow(jack);
