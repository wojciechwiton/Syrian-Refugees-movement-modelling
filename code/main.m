fileList = dir('../doc/data');
fileList = fileList(3:end);
fileListsize = size(fileList,1);

filePaths = strings(fileListsize,1);

for i=1:fileListsize
   filePaths(i) = fullfile(fileList(i).folder, fileList(i).name);
end

delimiter = ';';
headers = 1;
%A = dlmread(filePaths(1),delimiter);
% A = importdata(filePaths(1), delimiter, headers);
% A = uiimport(filePaths(1));
fileID = fopen(filePaths(1));
A = textscan(fileID, '%s%s%s%s%s%s');