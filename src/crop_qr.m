function qr_img = crop_qr(img, rotation, locations)
%CROP_QR Crop QR code from the original image.
%   img: original image.
%   rotation: rotation angle to rotate the image.
%   locations: squares of QR code locations
    min_x = min(locations(:, 2));
    min_y = min(locations(:, 3));

    img = imrotate(img, rotation, 'bilinear');
    width = max(locations(:, 4)) - min_x;
    height = max(locations(:, 5)) - min_y;
    qr_img = imcrop(img, [min_x-5 min_y-5 width+10 height+10]);
end

