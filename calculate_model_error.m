function [ err ] = calculate_model_error( model, x, y )
%CALCULATE_MODEL_ERROR Summary of this function goes here
%   Detailed explanation goes here
% k = model.gain;
% v = model.x(1);
% p = x;
% plogzero = -pi^2 / 12;
% plogpi = -21.3822762974079825791529118563500233611385933873060;
% begin = -2*k*v*(-plogzero) + 2*pi*k*v*(-log(2));
% t = 2*pi;
% endd = -2*k*v*(-plogpi + 2*pi^2 - 2*pi*log(exp(2*pi) + 1)) + 2*pi*k*v*(t - log(exp(2*pi) + 1)) - p*2*pi;
% err = endd - begin;
% 
% v = model.y(1);
% p = y;
% begin = -2*k*v*(-plogzero) + 2*pi*k*v*(-log(2)) + 1;
% t = 2*pi;
% endd = -2*k*v*(-plogpi + 2*pi^2 - 2*pi*log(exp(2*pi) + 1)) + 2*pi*k*v*(t - log(exp(2*pi) + 1)) - p*2*pi + 1;
% err = err + (endd - begin);

k = model.gain;
v = model.x(1);
st = 2*pi*rand(1000);

[x1, y1, t] = generate_boundary( model );
num_samples = length(st);
for i = 1:num_samples
    closest = [Inf, Inf];
    closest2 = [Inf, Inf];
    closestVal = Inf;
    closestVal2 = Inf;
    for j = 2:num_samples
        current = norm(([x1(i), y1(i)] - [x1(j), y1(j)]).^2);
        if current < closestVal
            closestVal2 = closestVal;
            closestVal = current;
        end
    end
end


end

