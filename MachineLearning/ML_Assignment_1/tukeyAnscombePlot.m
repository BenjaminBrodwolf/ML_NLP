function [top,bottom] = tukeyAnscombePlot(fitted_data,residuals, task_number)
%TUKEYANSCOMBEPLOT Summary of this function goes here
%   Detailed explanation goes here

top = 0; bottom = 0;
for i=1:length(residuals)
    if residuals(i) >= 0
        top = top + 1;
    elseif residuals(i) < 0
        bottom = bottom + 1;
    end
end


figure;
plot(fitted_data, residuals, 'o', 'MarkerSize', 1);

yline(0,"-.r" , "Data top: " + num2str(top), 'LabelVerticalAlignment', 'top');
yline(0,"-.r" , "Data bottom" + num2str(bottom), 'LabelVerticalAlignment', 'bottom');
title(['Task ' + task_number ,'Tukey Anscombe Plot: Residual vs Fitting data']);
ylabel('Residuals'); 
xlabel('Fitting data');
legend('Livin area sq.ft. data', 'Zero Line');

fprintf('Above and under the "Zero Line" \n Top:\t\t %d\n Bottom:\t %d\n Std.dev.:\t %f', top, bottom, std([top, bottom]));
end

