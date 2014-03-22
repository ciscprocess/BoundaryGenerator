function [ optimized_model ] = optimize_model( model, x, y )
%OPTIMIZE_MODEL Summary of this function goes here
%   Detailed explanation goes here
    c_err = calculate_model_error(model, x, y);
    
    for i = 1:100000
        fprintf('Iteration %d, error: %f\n', i, c_err);
        model2 = model;
        model2.gain = model.gain + (rand(1) - 0.5) / 100;
        model2.offsets(1) = model.offsets(1) + (rand(1) - 0.5) / 100;
        model2.scales(1) = model.scales(1) + (rand(1) - 0.5) / 100;
        model2.x(1) = model.x(1) + (rand(1) - 0.5) / 0.1;
        model2.y(1) = model.y(1) + (rand(1) - 0.5) / 0.1;
        t_err = calculate_model_error(model2, x, y);
        if abs(t_err) < c_err
            if t_err > 0
                model = model2;
                c_err = t_err;
            end
        end
    end
    optimized_model = model;
end

