function qr_img = detect_qr(img)
%DETECT_QR Detect QR code and extract it from the image.
    img = rgb2gray(img);
    original_img = img;
    
    bw = pre_processing(img);
    
    rotat = 0;
    while true
        bwo = imclearborder(~bw);
        bwo = imrotate(bwo, rotat);
%         figure, imshow(bwo);
        
        s = regionprops(bwo, 'Centroid', 'BoundingBox');
        centroids = cat(1, s.Centroid);
%         figure, imshow(bwo);
%         hold on
%         plot(centroids(:,1),centroids(:,2), 'b*')
%         hold off

        bboxes = cat(1, s.BoundingBox);
%         figure, imshow(bwo);
%         hold on
%         plot(bboxes(:,1),bboxes(:,2), 'b*')
%         hold off

        [B, L, N, A] = bwboundaries(bwo, 'noholes');
        [r, c] = find(A(:,:));
        boundaries = cat(2, r, c);

        locations = get_squares_location(centroids, bboxes, boundaries);
        if(is_right_rotation(locations))
            break;
        else
            rotat = rotat + get_rotation_angle(locations);
        end
    end
    
    qr_img = crop_qr(original_img, rotat, locations);
    qr_img = post_processing(qr_img);
end

