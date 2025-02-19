function victory(app)
    clf(app);

    uilabel(app, 'Text', 'Gagné', ...
        'Position', [app.UserData.screenSize(3)/2-75, (app.UserData.screenSize(4)-80)/2, 250, 200], ...
        'FontSize', 60);

    uilabel(app, 'Text', sprintf('Score: %d/%d --> %.0f%%', app.UserData.score, app.UserData.nbTrials, app.UserData.score/app.UserData.nbTrials*100), ...
        'Position', [app.UserData.screenSize(3)/2-100, (app.UserData.screenSize(4)-80)/2-110, 400, 200], ...
        'FontSize', 30);

    uibutton(app, 'Text', 'Menu principal', ...
        'Position', [app.UserData.screenSize(3)/2-100, (app.UserData.screenSize(4)-80)/2-200, 250, 100], ...
        'FontSize', 30, ...
        'ButtonPushedFcn', @(btn, event) initialization(app));
    
    load("BestScores.mat", "BestScores");
    if strcmp(app.UserData.choice, 'Tour de France')
        if app.UserData.nbTrials < BestScores.TourDeFrance
            BestScores.TourDeFrance = app.UserData.nbTrials;
        elseif isempty(BestScores.TourDeFrance)
            BestScores.TourDeFrance = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Coupe du Monde') 
        if app.UserData.nbTrials < BestScores.CoupeDuMonde
            BestScores.CoupeDuMonde = app.UserData.nbTrials;
        elseif isempty(BestScores.CoupeDuMonde)
            BestScores.CoupeDuMonde = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Euro')
        if app.UserData.nbTrials < BestScores.Euro
            BestScores.Euro = app.UserData.nbTrials;
        elseif isempty(BestScores.Euro)
            BestScores.Euro = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Jeux Olympiques')
        if app.UserData.nbTrials < BestScores.JeuxOlympiques
            BestScores.JeuxOlympiques = app.UserData.nbTrials;
        elseif isempty(BestScores.JeuxOlympiques)
            BestScores.JeuxOlympiques = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Champions League')
        if app.UserData.nbTrials < BestScores.ChampionsLeague
            BestScores.ChampionsLeague = app.UserData.nbTrials;
        elseif isempty(BestScores.ChampionsLeague)
            BestScores.ChampionsLeague = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Ballon d''or')
        if app.UserData.nbTrials < BestScores.BallonDor
            BestScores.BallonDor = app.UserData.nbTrials;
        elseif isempty(BestScores.BallonDor)
            BestScores.BallonDor = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Grand Chelems hommes')
        if app.UserData.nbTrials < BestScores.GrandChelems
            BestScores.GrandChelems = app.UserData.nbTrials;
        elseif isempty(BestScores.GrandChelems)
            BestScores.GrandChelems = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Masters hommes')
        if app.UserData.nbTrials < BestScores.MastersHommes
            BestScores.MastersHommes = app.UserData.nbTrials;
        elseif isempty(BestScores.MastersHommes)
            BestScores.MastersHommes = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Tournois de tennis hommes')
        if app.UserData.nbTrials < BestScores.TournoisDeTennisHommes
            BestScores.TournoisDeTennisHommes = app.UserData.nbTrials;
        elseif isempty(BestScores.TournoisDeTennisHommes)
            BestScores.TournoisDeTennisHommes = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Joueurs de tennis')
        if app.UserData.nbTrials < BestScores.JoueursDeTennis
            BestScores.JoueursDeTennis = app.UserData.nbTrials;
        elseif isempty(BestScores.JoueursDeTennis)
            BestScores.JoueursDeTennis = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Grand Chelems femmes')
        if app.UserData.nbTrials < BestScores.GrandChelemsFemmes
            BestScores.GrandChelemsFemmes = app.UserData.nbTrials;
        elseif isempty(BestScores.GrandChelemsFemmes)
            BestScores.GrandChelemsFemmes = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Masters femmes')
        if app.UserData.nbTrials < BestScores.MastersFemmes
            BestScores.MastersFemmes = app.UserData.nbTrials;
        elseif isempty(BestScores.MastersFemmes)
            BestScores.MastersFemmes = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Tournois de tennis femmes')
        if app.UserData.nbTrials < BestScores.TournoisDeTennisFemmes
            BestScores.TournoisDeTennisFemmes = app.UserData.nbTrials;
        elseif isempty(BestScores.TournoisDeTennisFemmes)
            BestScores.TournoisDeTennisFemmes = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Joueuses de tennis')
        if app.UserData.nbTrials < BestScores.JoueusesDeTennis
            BestScores.JoueusesDeTennis = app.UserData.nbTrials;
        elseif isempty(BestScores.JoueusesDeTennis)
            BestScores.JoueusesDeTennis = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Records d''athlétisme')
        if app.UserData.nbTrials < BestScores.RecordsAthletisme
            BestScores.RecordsAthletisme = app.UserData.nbTrials;
        elseif isempty(BestScores.RecordsAthletisme)
            BestScores.RecordsAthletisme = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Records de natation')
        if app.UserData.nbTrials < BestScores.RecordsNatation
            BestScores.RecordsNatation = app.UserData.nbTrials;
        elseif isempty(BestScores.RecordsNatation)
            BestScores.RecordsNatation = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Athlétisme')
        if app.UserData.nbTrials < BestScores.Athletisme
            BestScores.Athletisme = app.UserData.nbTrials;
        elseif isempty(BestScores.Athletisme)
            BestScores.Athletisme = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Natation')
        if app.UserData.nbTrials < BestScores.Natation
            BestScores.Natation = app.UserData.nbTrials;
        elseif isempty(BestScores.Natation)
            BestScores.Natation = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Sports')
        if app.UserData.nbTrials < BestScores.Sports
            BestScores.Sports = app.UserData.nbTrials;
        elseif isempty(BestScores.Sports)
            BestScores.Sports = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Tableau des médailles athlétisme')
        if app.UserData.nbTrials < BestScores.TableauMedaillesAthletisme
            BestScores.TableauMedaillesAthletisme = app.UserData.nbTrials;
        elseif isempty(BestScores.TableauMedaillesAthletisme)
            BestScores.TableauMedaillesAthletisme = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Tableau des médailles natation')
        if app.UserData.nbTrials < BestScores.TableauMedaillesNatation
            BestScores.TableauMedaillesNatation = app.UserData.nbTrials;
        elseif isempty(BestScores.TableauMedaillesNatation)
            BestScores.TableauMedaillesNatation = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Belgique aux JO')
        if app.UserData.nbTrials < BestScores.BelgiqueJO
            BestScores.BelgiqueJO = app.UserData.nbTrials;
        elseif isempty(BestScores.BelgiqueJO)
            BestScores.BelgiqueJO = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Belgique aux CM d''athlétisme')
        if app.UserData.nbTrials < BestScores.BelgiqueCMAthletisme
            BestScores.BelgiqueCMAthletisme = app.UserData.nbTrials;
        elseif isempty(BestScores.BelgiqueCMAthletisme)
            BestScores.BelgiqueCMAthletisme = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Belgique aux CM de natation')
        if app.UserData.nbTrials < BestScores.BelgiqueCMNatation
            BestScores.BelgiqueCMNatation = app.UserData.nbTrials;
        elseif isempty(BestScores.BelgiqueCMNatation)
            BestScores.BelgiqueCMNatation = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Belgique aux CE d''athlétisme')
        if app.UserData.nbTrials < BestScores.BelgiqueCEAthletisme
            BestScores.BelgiqueCEAthletisme = app.UserData.nbTrials;
        elseif isempty(BestScores.BelgiqueCEAthletisme)
            BestScores.BelgiqueCEAthletisme = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'CM d''athlétisme')
        if app.UserData.nbTrials < BestScores.CMAthletisme
            BestScores.CMAthletisme = app.UserData.nbTrials;
        elseif isempty(BestScores.CMAthletisme)
            BestScores.CMAthletisme = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Disciplines des athlètes belges')
        if app.UserData.nbTrials < BestScores.AthletesBelgesDisciplines
            BestScores.AthletesBelgesDisciplines = app.UserData.nbTrials;
        elseif isempty(BestScores.AthletesBelgesDisciplines)
            BestScores.AthletesBelgesDisciplines = app.UserData.nbTrials;
        end
    elseif strcmp(app.UserData.choice, 'Palmares des athlètes belges')
        if app.UserData.nbTrials < BestScores.AthletesBelgesPalmares
            BestScores.AthletesBelgesPalmares = app.UserData.nbTrials;
        elseif isempty(BestScores.AthletesBelgesPalmares)
            BestScores.AthletesBelgesPalmares = app.UserData.nbTrials;
        end 
    end
    save("BestScores.mat", "BestScores");
end