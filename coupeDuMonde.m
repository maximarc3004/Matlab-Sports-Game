%% 1st Game %%
function coupeDuMonde(app)
    % Clear existing UI elements (if any) to show the input interface
    clf(app);

    load("CoupeDuMonde.mat", "annees", "vainqueurs", "pays");
    app.UserData.years = annees;
    for i = 1:length(app.UserData.years)
        app.UserData.answers(i) = char(string(vainqueurs(i))+ " en "+string(pays(i)));
    end
    app.UserData.nbYears = length(app.UserData.years);
    app.UserData.nbMaxIterations = length(app.UserData.years);
    app.UserData.missedYears = {};
    app.UserData.missedAnswers = {};
    app.UserData.missedIndices = {};
    
    % Add a label indicating which choice was selected
    uilabel(app, 'Text', sprintf('Tu as choisi: Tour de France'), ...
        'Position', [app.UserData.screenSize(3)/4-225, (app.UserData.screenSize(4)-80)*3/4, 450, 50], ...
        'FontSize', 20);
    
    % Select randomly a year and the corresponding winner
    randomSelection(app);

    % Add a prompt label for the country
    yearLabel = uilabel(app, 'Text', "Année: "+app.UserData.year, ...
        'Position', [app.UserData.screenSize(3)/4-225, (app.UserData.screenSize(4)-80)*625/1000, 600, 50], ...
        'FontSize', 20);

    % Add a prompt label for the number of remaining countries to find
    remainingYearsLabel = uilabel(app, 'Text', sprintf('Nombre de vainqueurs trouvés: %d/%d', app.UserData.score, app.UserData.nbYears), ...
        'Position', [app.UserData.screenSize(3)/4-225, (app.UserData.screenSize(4)-80)*562.5/1000, 450, 50], ...
        'FontSize', 20);
    
    % Add a prompt label for the word input
    uilabel(app, 'Text', 'Entrez le vainqueur:', ...
        'Position', [app.UserData.screenSize(3)/4-225, (app.UserData.screenSize(4)-80)/2, 450, 50], ...
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
    app.UserData.yearLabel = yearLabel;
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
    load("BestScores.mat", "BestScores");
    uilabel(app, 'Text', sprintf('Best score: %d', BestScores.TourDeFrance), ...
        'Position', [app.UserData.screenSize(3)-500, (app.UserData.screenSize(4)-80)-100, 250, 50], ...
        'FontSize', 20);

    % Now set the WindowKeyPressFcn for the figure
    app.WindowKeyPressFcn = @windowKeyPressCallback;
end