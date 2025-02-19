clear all; close all; clc;

%% Read data %%
filename = "C:\Users\maxim\OneDrive - Vrije Universiteit Brussel\Culture générale\Excel\Natation.xlsx";
sheets = sheetnames(filename);  % Get all sheet names
for i = 1:length(sheets)
    sheetName = sheets{i};
    data{i} = readtable(filename, 'Sheet', sheetName);  % Read each sheet into a cell array
end

q = 1;
for i=3:length(sheets)
    for j = 1:height(data{1,i})
        if ~isempty(data{1,i}.Var1{j})
            disciplines{q} = sheets{i};
            athletes{q} = data{1,i}.Var1{j};
            palmares{q} = "("+string(data{1,i}.GoldOL(j))+"-"+string(data{1,i}.SilverOL(j))+"-"+string(data{1,i}.BronzeOL(j))+")";
            if ~isnan(data{1,i}.GoldWC(j))
                palmares{q} = palmares{q} + " ("+string(data{1,i}.GoldWC(j))+"-"+string(data{1,i}.SilverWC(j))+"-"+string(data{1,i}.BronzeWC(j))+")";
            end
            q = q+1;
        end
    end
end

save("ListeNatation.mat", "athletes", "disciplines", "palmares");