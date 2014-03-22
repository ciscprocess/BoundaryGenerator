function [ model ] = generate_boundary_model( gain, offsets, scales, lociX, lociY )
%GENERATE_BOUNDARY_MODEL Summary of this function goes here
%   Detailed explanation goes here
    model = {};
    model.gain = gain;
    model.offsets = offsets;
    model.scales = scales;
    model.x = lociX;
    model.y = lociY;
    model.t = 0:0.00001:2*pi;
    [~, model.num_features] = size(offsets);

end

