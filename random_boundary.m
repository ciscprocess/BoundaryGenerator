function [ x, y, t ] = random_boundary( points )
%RANDOM_BOUNDARY Summary of this function goes here
%   Detailed explanation goes here
    model = generate_boundary_model(rand(1)*3, rand(1, points) * 5, rand(1, points), rand(1, points)*6 - 3, rand(1, points)*6 - 3);
    [x, y, t] = generate_boundary(model);
end

