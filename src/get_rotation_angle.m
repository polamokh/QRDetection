function rotation_angle = get_rotation_angle(locations)
%GET_ROTATION_ANGLE Get the right rotation angle to alignment QR code.
%   locations: squares of QR code locations
%   Credits go to Islam ;D
    sorted_locs = sortrows(locations, 3);
    x1 = sorted_locs(1, 2);
    x2 = sorted_locs(2, 2);
    y1 = sorted_locs(1, 3);
    y2 = sorted_locs(2, 3);
    if((x1 >= x2 - 2 && x1 <= x2 + 2) || ...
            (y1 >= y2 - 2 && y1 <= y2 + 2))
        rotation_angle = 90;
    else
        slope = (y2-y1) / (x2-x1);
        rotation_angle = rad2deg(atan(slope));
    end
end

