clear all; close all; clc;

%% Read data %%
filename = "C:\Users\maxim\OneDrive - Vrije Universiteit Brussel\Culture générale\Excel\Athlétisme.xlsx";
sheets = sheetnames(filename);  % Get all sheet names
for i = 1:length(sheets)
    sheetName = sheets{i};
    data{i} = readtable(filename, 'Sheet', sheetName);  % Read each sheet into a cell array
end

j = 1;
while ~isempty(data{1,2}.Var1{j})
    disciplines{j} = data{1,2}.Disciplines{j};
    athletes{j} = data{1,2}.Var1{j};
    palmares{j} = string(data{1,2}.TotalOL(j))+" ("+string(data{1,2}.GoldOL(j))+"-"+string(data{1,2}.SilverOL(j))+"-"+string(data{1,2}.BronzeOL(j))+") et "+string(data{1,2}.TotalWC(j))+" ("+string(data{1,2}.GoldWC(j))+"-"+string(data{1,2}.SilverWC(j))+"-"+string(data{1,2}.BronzeWC(j))+")";
    j = j+1;
end

save("ListeTableauMedaillesAthletisme.mat", "athletes", "disciplines", "palmares");