function enhanced_qr_img = post_processing(qr_img)
%ENHANCE_QR Enhance the QR code image to get best output.
%   qr_img: QR code image
    enhanced_qr_img = imadjust(qr_img);
    enhanced_qr_img = imsharpen(enhanced_qr_img, 'Amount', 2);
    enhanced_qr_img = imresize(enhanced_qr_img, [128, 128], 'bilinear');
    [h, w] = size(enhanced_qr_img);
    for i = 1:h
        for j = 1:w
            if(enhanced_qr_img(i, j) >= 210)
                enhanced_qr_img(i, j) = 255;
            end
        end
    end
end

