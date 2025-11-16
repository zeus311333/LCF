function [MAE] = calculate_MAE(k)
%calculate_MAE Assessing the stability of item CTR, when CTR = 50%.
% input 
% k: The sample size.
% output
% MAE: The MAE between the sample CTR and the true value (50%).

data = [zeros(5 * 10 .^ 4 , 1) ; ones(5 * 10 .^ 4 , 1)];   %generate the raw dataset;
c = 3 * 10 .^ 5;   %number of cycles;
AE = zeros(c , 1);   %preset single absolute error;
for i = 1 : c
    sample = datasample(data , k);   %randomly select a sample of size k;
    AE(i , :) = abs(mean(sample) - 0.5);   %calculate the single absolute error;
end
MAE = mean(AE);   %calculate the Mean Absolute Error (MAE);

end

