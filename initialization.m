function initialization(app)
    % Clear existing UI elements (if any) to show the input interface
    clf(app);

    % Initialize score and number of trials in the UserData property
    app.UserData.score = 0;
    app.UserData.nbTrials = 0;
    app.UserData.button = 1;

    % Create a dropdown menu
    uidropdown(app, ...
        'Items', {'Tour de France', 'Coupe du Monde', 'Euro', 'Jeux Olympiques', 'Champions League', 'Ballon d''or', 'Grand Chelems hommes', 'Masters hommes', 'Tournois de tennis hommes', 'Joueurs de tennis', 'Grand Chelems femmes', 'Masters femmes', 'Tournois de tennis femmes', 'Joueuses de tennis', 'Records d''athlétisme', 'Records de natation', 'Athlétisme', 'Natation', 'Sports', 'Tableau des médailles athlétisme', 'Tableau des médailles natation', 'Belgique aux JO', 'Belgique aux CM d''athlétisme', 'Belgique aux CM de natation', 'Belgique aux CE d''athlétisme', 'CM d''athlétisme', 'Disciplines des athlètes belges', 'Palmares des athlètes belges'}, ...
        'Position', [app.UserData.screenSize(1)+50, app.UserData.screenSize(4)-200, 500, 100], ...
        'FontSize', 40, ...
        'Value', 'Tour de France', ... % Default selection
        'ValueChangedFcn', @(choice, event) dropdownCallback(choice)); % Callback when selection changes
    app.UserData.choice = 'Tour de France';

    uibutton(app, 'Text', 'Confirmer', ...
        'Position', [app.UserData.screenSize(1)+600, app.UserData.screenSize(4)-200, 300, 100], ...
        'FontSize', 40, ...
        'ButtonPushedFcn', @(btn, event) game(app));
    
    % Callback function for handling dropdown selection changes
    function dropdownCallback(choice)
        app.UserData.choice = choice.Value; % Get the selected value
    end
end