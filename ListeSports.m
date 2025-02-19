clear all; close all; clc;

%% Read data %%
filename = "C:\Users\maxim\OneDrive - Vrije Universiteit Brussel\Culture générale\Excel\SportsGOATs.xlsx";
sheets = sheetnames(filename);  % Get all sheet names
for i = 1:length(sheets)
    sheetName = sheets{i};
    data{i} = readtable(filename, 'Sheet', sheetName);  % Read each sheet into a cell array
end
fieldNames = fieldnames(data{1,1});

q = 1;
for i=1:length(sheets)
    for j = 1:width(data{1,i})
        for k = 1:height(data{1,i})
            if ~strcmp(class(data{1,i}.(fieldNames{j})(1)), 'double')
                if ~isempty(data{1,i}.(fieldNames{j}){k})
                    disciplines{q} = fieldNames{j};
                    athletes{q} = data{1,i}.(fieldNames{j}){k};
                    q = q+1;
                end
            end
        end
    end
end
for i=1:length(disciplines)
    if strcmp(disciplines{i},'Basket_ball')
        disciplines{i} = 'Basket-ball';
    elseif strcmp(disciplines{i},'Cano__kayak')
        disciplines{i} = 'Canoë-kayak';
    elseif strcmp(disciplines{i},'Combin_Nordique')
        disciplines{i} = 'Combiné Nordique';
    elseif strcmp(disciplines{i},'Cyclo_cross')
        disciplines{i} = 'Cyclo-cross';
    elseif strcmp(disciplines{i},'x_checs')
        disciplines{i} = 'Échecs';
    elseif strcmp(disciplines{i},'x_quitation')
        disciplines{i} = 'Équitation';
    elseif strcmp(disciplines{i},'Fl_chettes')
        disciplines{i} = 'Fléchettes';
    elseif strcmp(disciplines{i},'Formule1')
        disciplines{i} = 'Formule 1';
    elseif strcmp(disciplines{i},'FootballAm_ricain')
        disciplines{i} = 'Football Américain';
    elseif strcmp(disciplines{i},'Halt_rophilie')
        disciplines{i} = 'Haltérophilie';
    elseif strcmp(disciplines{i},'HockeySurGazon')
        disciplines{i} = 'Hockey sur gazon';
    elseif strcmp(disciplines{i},'HockeySurGlace')
        disciplines{i} = 'Hockey sur glace';
    elseif strcmp(disciplines{i},'JeuDePaume')
        disciplines{i} = 'Jeu de paume';
    elseif strcmp(disciplines{i},'Karat_')
        disciplines{i} = 'Karaté';
    elseif strcmp(disciplines{i},'NatationSynchronis_')
        disciplines{i} = 'Natation synchronisée';
    elseif strcmp(disciplines{i},'PatinageArtistique')
        disciplines{i} = 'Patinage artistique';
    elseif strcmp(disciplines{i},'PatinageDeVitesse')
        disciplines{i} = 'Patinage de vitesse';
    elseif strcmp(disciplines{i},'PeloteBasque')
        disciplines{i} = 'Pelote basque';
    elseif strcmp(disciplines{i},'P_tanque')
        disciplines{i} = 'Pétanque';
    elseif strcmp(disciplines{i},'Plong_e')
        disciplines{i} = 'Plongée';
    elseif strcmp(disciplines{i},'Saut_Ski')
        disciplines{i} = 'Saut à ski';
    elseif strcmp(disciplines{i},'SkiAlpin')
        disciplines{i} = 'Ski alpin';
    elseif strcmp(disciplines{i},'SkiDeFond')
        disciplines{i} = 'Ski de fond';
    elseif strcmp(disciplines{i},'TennisDeTable')
        disciplines{i} = 'Tennis de table';
    elseif strcmp(disciplines{i},'Tir_L_arc')
        disciplines{i} = 'Tir à l''arc';
    elseif strcmp(disciplines{i},'Volley_ball')
        disciplines{i} = 'Volley-ball';
    elseif strcmp(disciplines{i},'Water_polo')
        disciplines{i} = 'Water polo';
    end
end

save("ListeSports.mat", "athletes", "disciplines");