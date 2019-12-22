function img = pre_processing(qr_img)
%PRE_PROCESSING Enhance and segment the QR code for detection.
%   qr_img: Grayscale QR code image.
%   img: Enhanced B/W image.
    thresh = adaptthresh(qr_img, 0.55, 'ForegroundPolarity', 'dark', ...
        'NeighborhoodSize', [13 13], 'Statistic', 'gaussian');
    img = imbinarize(qr_img, thresh);
end

