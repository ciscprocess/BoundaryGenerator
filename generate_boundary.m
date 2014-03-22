function [ x, y, t ] = generate_boundary( model )
%GENERATE_BOUNDARY Summary of this function goes here
%   Detailed explanation goes here

    x = cos(model.t);
    y = sin(model.t);
    t = model.t;
    
    for i = 1:model.num_features
        x = x + model.gain * dsig((t - model.offsets(:, i)) ./ model.scales(:, i)) .* model.x(i);
        y = y + model.gain * dsig((t - model.offsets(:, i)) ./ model.scales(:, i)) .* model.y(i);
    end;
    
end

