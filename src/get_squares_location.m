function locations = get_squares_location(centroids, bboxes, boundaries)
%GET_SQUARES_LOCATION Get squares location of QR code in the image.

    locations = zeros;
    indx = 1;
    for k = 1:length(boundaries)
        i = boundaries(k, 2);
        j = boundaries(k, 1);
        if((centroids(i, 1) >= centroids(j, 1) - 3 && ...
                centroids(i, 1) < centroids(j, 1) + 3) && ...
                (centroids(i, 2) >= centroids(j, 2) - 3 && ...
                centroids(i, 2) < centroids(j, 2) + 3))
            locations(indx, 1) = i;
            locations(indx, 2) = bboxes(i, 1);
            locations(indx, 3) = bboxes(i, 2);
            locations(indx, 4) = bboxes(i, 1) + bboxes(i, 3);
            locations(indx, 5) = bboxes(i, 2) + bboxes(i, 4);
            indx = indx + 1;
        end
    end
end

