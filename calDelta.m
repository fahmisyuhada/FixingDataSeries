function output = calDelta(data)
%CALDELTA Summary of this function goes here
%   Detailed explanation goes here
    value = data;
    output = zeros(1,size(value,1)-1);
    for i=1:size(value)-1
        output(1,i) = value(i+1,1)- value(i,1);
    end
end

