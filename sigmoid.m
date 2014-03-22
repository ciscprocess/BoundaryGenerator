function [ y ] = sigmoid( x )
%SIGMOID takes the sigmoid of a number
y = 1./(1 + exp(-x));
end

