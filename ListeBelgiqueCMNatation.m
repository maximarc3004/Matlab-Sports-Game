clear all; close all; clc;

%% Read data %%
filename = "C:\Users\maxim\OneDrive - Vrije Universiteit Brussel\Culture générale\Excel\BelgiqueSports.xlsx";
sheets = sheetnames(filename);  % Get all sheet names
for i = 1:length(sheets)
    sheetName = sheets{i};
    data{i} = readtable(filename, 'Sheet', sheetName);  % Read each sheet into a cell array
end

j = 1;
while ~isempty(data{1,3}.Var1{j})
    annees{j} = data{1,3}.Var1{j};
    palmares{j} = string(data{1,3}.Var5(j))+" ("+string(data{1,3}.Var2(j))+"-"+string(data{1,3}.Var3(j))+"-"+string(data{1,3}.Var4(j))+")";
    j = j+1;
end

save("ListeBelgiqueCMNatation.mat", "annees", "palmares");