%% 1st Game %%
function game(app)
    % Clear existing UI elements (if any) to show the input interface
    clf(app);

    load("BestScores.mat", "BestScores");
    
    if strcmp(app.UserData.choice, 'Tour de France')
        load("ListeTourDeFrance.mat", "annees", "vainqueurs");
        app.UserData.questions = annees;
        app.UserData.answers = vainqueurs;
        bestScore = BestScores.TourDeFrance;
        toFind = "Entrez le vainqueur: ";
        given = "Année: ";
    elseif strcmp(app.UserData.choice, 'Coupe du Monde')
        load("ListeCoupeDuMonde.mat", "annees", "vainqueurs", "pays", "liants");
        app.UserData.questions = annees;
        for i = 1:length(app.UserData.questions)
            app.UserData.answers{i} = char(string(vainqueurs(i))+" "+string(liants(i))+" "+string(pays(i)));
        end
        bestScore = BestScores.CoupeDuMonde;
        toFind = "Entrez le vainqueur et le pays hôte: ";
        given = "Année: ";
    elseif strcmp(app.UserData.choice, 'Euro')
        load("ListeEuro.mat", "annees", "vainqueurs", "pays", "liants");
        app.UserData.questions = annees;
        for i = 1:length(app.UserData.questions)
            app.UserData.answers{i} = char(string(vainqueurs(i))+" "+string(liants(i))+" "+string(pays(i)));
        end
        bestScore = BestScores.Euro;
        toFind = "Entrez le vainqueur et le pays hôte: ";
        given = "Année: ";
    elseif strcmp(app.UserData.choice, 'Jeux Olympiques')
        load("ListeJeuxOlympiques.mat", "annees", "villes");
        app.UserData.questions = annees;
        app.UserData.answers = villes;
        bestScore = BestScores.JeuxOlympiques;
        toFind = "Entrez la ville hôte: ";
        given = "Année: ";
    elseif strcmp(app.UserData.choice, 'Champions League')
        load("ListeChampionsLeague.mat", "annees", "vainqueurs");
        app.UserData.questions = annees;
        app.UserData.answers = vainqueurs;
        bestScore = BestScores.ChampionsLeague;
        toFind = "Entrez le club vainqueur: ";
        given = "Année: ";
    elseif strcmp(app.UserData.choice, 'Ballon d''or')
        load("ListeBallonDor.mat", "annees", "vainqueurs");
        app.UserData.questions = annees;
        app.UserData.answers = vainqueurs;
        bestScore = BestScores.BallonDor;
        toFind = "Entrez le vainqueur: ";
        given = "Année: ";
    elseif strcmp(app.UserData.choice, 'Grand Chelems hommes')
        load("ListeGrandChelems.mat", "annees", "tournois", "vainqueurs");
        for i = 1:length(annees)
            app.UserData.questions{i} = char(string(tournois(i))+" en "+string(annees(i)));
        end
        app.UserData.answers = vainqueurs;
        bestScore = BestScores.GrandChelems;
        toFind = "Entrez le vainqueur: ";
        given = "Tournoi: ";
    elseif strcmp(app.UserData.choice, 'Masters hommes')
        load("ListeMastersHommes.mat", "annees", "vainqueurs");
        app.UserData.questions = annees;
        app.UserData.answers = vainqueurs;
        bestScore = BestScores.MastersHommes;
        toFind = "Entrez le vainqueur: ";
        given = "Année: ";
    elseif strcmp(app.UserData.choice, 'Tournois de tennis hommes')
        load("ListeTournoisDeTennisHommes.mat", "annees", "tournois", "vainqueurs");
        for i = 1:length(annees)
            app.UserData.questions{i} = char(string(tournois(i))+" en "+string(annees(i)));
        end
        app.UserData.answers = vainqueurs;
        bestScore = BestScores.TournoisDeTennisHommes;
        toFind = "Entrez le vainqueur: ";
        given = "Tournoi: ";
    elseif strcmp(app.UserData.choice, 'Joueurs de tennis')
        load("ListeJoueursDeTennis.mat", "joueurs", "titres");
        app.UserData.questions = joueurs;
        app.UserData.answers = titres;
        bestScore = BestScores.JoueursDeTennis;
        toFind = "Entrez le nombre de Grand Chelems et de Masters: ";
        given = "Joueur: ";
    elseif strcmp(app.UserData.choice, 'Grand Chelems femmes')
        load("ListeGrandChelemsFemmes.mat", "annees", "tournois", "vainqueurs");
        for i = 1:length(annees)
            app.UserData.questions{i} = char(string(tournois(i))+" en "+string(annees(i)));
        end
        app.UserData.answers = vainqueurs;
        bestScore = BestScores.GrandChelemsFemmes;
        toFind = "Entrez la vainqueur: ";
        given = "Tournoi: ";
    elseif strcmp(app.UserData.choice, 'Masters femmes')
        load("ListeMastersFemmes.mat", "annees", "vainqueurs");
        app.UserData.questions = annees;
        app.UserData.answers = vainqueurs;
        bestScore = BestScores.MastersFemmes;
        toFind = "Entrez la vainqueur: ";
        given = "Année: ";
    elseif strcmp(app.UserData.choice, 'Tournois de tennis femmes')
        load("ListeTournoisDeTennisFemmes.mat", "annees", "tournois", "vainqueurs");
        for i = 1:length(annees)
            app.UserData.questions{i} = char(string(tournois(i))+" en "+string(annees(i)));
        end
        app.UserData.answers = vainqueurs;
        bestScore = BestScores.TournoisDeTennisFemmes;
        toFind = "Entrez la vainqueur: ";
        given = "Tournoi: ";
    elseif strcmp(app.UserData.choice, 'Joueuses de tennis')
        load("ListeJoueusesDeTennis.mat", "joueuses", "titres");
        app.UserData.questions = joueuses;
        app.UserData.answers = titres;
        bestScore = BestScores.JoueusesDeTennis;
        toFind = "Entrez le nombre de Grand Chelems et de Masters: ";
        given = "Joueuse: ";
    elseif strcmp(app.UserData.choice, 'Records d''athlétisme')
        load("ListeRecordsAthletisme.mat", "disciplines", "sexes", "tenants");
        for i = 1:length(disciplines)
            app.UserData.questions{i} = char(string(disciplines(i))+" "+string(sexes(i)));
        end
        app.UserData.answers = tenants;
        bestScore = BestScores.RecordsAthletisme;
        toFind = "Entrez le recordman ou la recordwoman: ";
        given = "Discipline: ";
    elseif strcmp(app.UserData.choice, 'Records de natation')
        load("ListeRecordsNatation.mat", "disciplines", "sexes", "tenants");
        for i = 1:length(disciplines)
            app.UserData.questions{i} = char(string(disciplines(i))+" "+string(sexes(i)));
        end
        app.UserData.answers = tenants;
        bestScore = BestScores.RecordsNatation;
        toFind = "Entrez le recordman ou la recordwoman: ";
        given = "Discipline: ";
    elseif strcmp(app.UserData.choice, 'Athlétisme')
        load("ListeAthletisme.mat", "disciplines", "athletes", "palmares");
        for i = 1:length(disciplines)
            app.UserData.questions{i} = char(string(athletes(i))+" "+string(palmares(i)));
        end
        app.UserData.answers = disciplines;
        bestScore = BestScores.Athletisme;
        toFind = "Entrez la discipline: ";
        given = "Athlète: ";
    elseif strcmp(app.UserData.choice, 'Natation')
        load("ListeNatation.mat", "disciplines", "athletes", "palmares");
        for i = 1:length(disciplines)
            app.UserData.questions{i} = char(string(athletes(i))+" "+string(palmares(i)));
        end
        app.UserData.answers = disciplines;
        bestScore = BestScores.Natation;
        toFind = "Entrez la discipline: ";
        given = "Nageur/Nageuse: ";
    elseif strcmp(app.UserData.choice, 'Sports')
        load("ListeSports.mat", "disciplines", "athletes");
        app.UserData.questions = athletes;
        app.UserData.answers = disciplines;
        bestScore = BestScores.Sports;
        toFind = "Entrez la discipline: ";
        given = "Athlète: ";
    elseif strcmp(app.UserData.choice, 'Tableau des médailles athlétisme')
        load("ListeTableauMedaillesAthletisme.mat", "athletes", "palmares");
        app.UserData.questions = athletes;
        app.UserData.answers = palmares;
        bestScore = BestScores.TableauMedaillesAthletisme;
        toFind = "Entrez le palmarès: ";
        given = "Athlète: ";
    elseif strcmp(app.UserData.choice, 'Tableau des médailles natation')
        load("ListeTableauMedaillesNatation.mat", "athletes", "palmares");
        app.UserData.questions = athletes;
        app.UserData.answers = palmares;
        bestScore = BestScores.TableauMedaillesNatation;
        toFind = "Entrez le palmarès: ";
        given = "Nageur/Nageuse: ";
    elseif strcmp(app.UserData.choice, 'Belgique aux JO')
        load("ListeBelgiqueJO.mat", "annees", "palmares");
        app.UserData.questions = annees;
        app.UserData.answers = palmares;
        bestScore = BestScores.BelgiqueJO;
        toFind = "Entrez le palmarès: ";
        given = "Édition: ";
    elseif strcmp(app.UserData.choice, 'Belgique aux CM d''athlétisme')
        load("ListeBelgiqueCMAthletisme.mat", "annees", "palmares");
        app.UserData.questions = annees;
        app.UserData.answers = palmares;
        bestScore = BestScores.BelgiqueCMAthletisme;
        toFind = "Entrez le palmarès: ";
        given = "Édition: ";
    elseif strcmp(app.UserData.choice, 'Belgique aux CM de natation')
        load("ListeBelgiqueCMNatation.mat", "annees", "palmares");
        app.UserData.questions = annees;
        app.UserData.answers = palmares;
        bestScore = BestScores.BelgiqueCMNatation;
        toFind = "Entrez le palmarès: ";
        given = "Édition: ";
    elseif strcmp(app.UserData.choice, 'Belgique aux CE d''athlétisme')
        load("ListeBelgiqueCEAthletisme.mat", "annees", "palmares");
        app.UserData.questions = annees;
        app.UserData.answers = palmares;
        bestScore = BestScores.BelgiqueCEAthletisme;
        toFind = "Entrez le palmarès: ";
        given = "Édition: ";
    elseif strcmp(app.UserData.choice, 'CM d''athlétisme')
        load("ListeCMAthletisme.mat", "annees", "villes");
        app.UserData.questions = annees;
        app.UserData.answers = villes;
        bestScore = BestScores.CMAthletisme;
        toFind = "Entrez la ville hôte: ";
        given = "Année: ";
    elseif strcmp(app.UserData.choice, 'Disciplines des athlètes belges')
        load("ListeAthletesBelges.mat", "athletes", "disciplines", "palmares");
        for i = 1:length(disciplines)
            app.UserData.questions{i} = char(string(athletes(i))+" ("+string(palmares(i)))+")";
        end
        app.UserData.answers = disciplines;
        bestScore = BestScores.AthletesBelgesDisciplines;
        toFind = "Entrez la discipline: ";
        given = "Athlète: ";
    elseif strcmp(app.UserData.choice, 'Palmares des athlètes belges')
        load("ListeAthletesBelges.mat", "athletes", "palmares");
        app.UserData.questions = athletes;
        app.UserData.answers = palmares;
        bestScore = BestScores.AthletesBelgesPalmares;
        toFind = "Entrez le palmares: ";
        given = "Athlète: ";
    end

    app.UserData.nbYears = length(app.UserData.questions);
    app.UserData.nbMaxIterations = length(app.UserData.questions);
    app.UserData.missedYears = {};
    app.UserData.missedAnswers = {};
    app.UserData.missedIndices = {};
    
    % Add a label indicating which choice was selected
    uilabel(app, 'Text', sprintf('Tu as choisi: %s', app.UserData.choice), ...
        'Position', [app.UserData.screenSize(3)/4-225, (app.UserData.screenSize(4)-80)*3/4, 450, 50], ...
        'FontSize', 20);
    
    % Select randomly a year and the corresponding winner
    randomSelection(app);

    % Add a prompt label for the country
    yearLabel = uilabel(app, 'Text', given+app.UserData.question, ...
        'Position', [app.UserData.screenSize(3)/4-225, (app.UserData.screenSize(4)-80)*625/1000, 800, 50], ...
        'FontSize', 20);

    % Add a prompt label for the number of remaining countries to find
    remainingYearsLabel = uilabel(app, 'Text', sprintf('Nombre d''années trouvés: %d/%d', app.UserData.score, app.UserData.nbYears), ...
        'Position', [app.UserData.screenSize(3)/4-225, (app.UserData.screenSize(4)-80)*562.5/1000, 450, 50], ...
        'FontSize', 20);
    
    % Add a prompt label for the word input
    uilabel(app, 'Text', sprintf('%s', toFind), ...
        'Position', [app.UserData.screenSize(3)/4-225, (app.UserData.screenSize(4)-80)/2, 550, 50], ...
        'FontSize', 20);
    
    % Create the input field
    inputField = uieditfield(app, 'Text', ...
        'Position', [app.UserData.screenSize(3)/4-225, (app.UserData.screenSize(4)-80)/2-50, 450, 50], ...
        'FontSize', 20);

    % Add a label for the score
    scoreField = uilabel(app, 'Text', sprintf('Score: %d/%d', app.UserData.score, app.UserData.nbTrials), ...
        'Position', [app.UserData.screenSize(3)/4, (app.UserData.screenSize(4)-80)/2-150, 450, 50], ...
        'FontSize', 20);

    % Store the fields and labels in app
    app.UserData.inputField = inputField;
    app.UserData.scoreField = scoreField;
    app.UserData.questionLabel = yearLabel;
    app.UserData.remainingYearsLabel = remainingYearsLabel;
    
    % Add a confirm button
    confirmButton = uibutton(app, 'Text', 'Confirmer', ...
        'Position', [app.UserData.screenSize(3)/4-225, (app.UserData.screenSize(4)-80)/2-150, 150, 50], ...
        'FontSize', 20, ...
        'ButtonPushedFcn', @(btn, event) onConfirm(app));
    app.UserData.confirmButton = confirmButton;

    % Add a back button
    uibutton(app, 'Text', 'Retour', ...
        'Position', [app.UserData.screenSize(3)-200, (app.UserData.screenSize(4)-80)-100, 150, 50], ...
        'FontSize', 20, ...
        'ButtonPushedFcn', @(btn, event) initialization(app));

    % Add a label for the best score
    uilabel(app, 'Text', sprintf('Best score: %d', bestScore), ...
        'Position', [app.UserData.screenSize(3)-500, (app.UserData.screenSize(4)-80)-100, 250, 50], ...
        'FontSize', 20);

    % Now set the WindowKeyPressFcn for the figure
    app.WindowKeyPressFcn = @windowKeyPressCallback;
end