function [data_hot_encoding] = OneHotEncoding(data)
%ONEHOTENCODING 

% create a unique list of the feature
uniq_data = unique(data);

% create the "one hot encoding" of the features
[~, loc] = ismember(data, uniq_data);
data_hot_encoding = transpose(full(ind2vec(loc')));

end

