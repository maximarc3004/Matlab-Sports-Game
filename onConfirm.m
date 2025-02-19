% Callback function when the user confirms the input
function onConfirm(app)
    pause(0.2);%Otherwise the enter key pressed does not work
    guess = app.UserData.inputField.Value;

    %Increase the number of trials
    app.UserData.nbTrials = app.UserData.nbTrials + 1;

    % Check if the guess is correct
    distance = editDistance(lower(guess), lower(app.UserData.answer));
    tolerance = 2;
    if strcmp(app.UserData.choice, 'Joueurs de tennis') || strcmp(app.UserData.choice, 'Joueuses de tennis') || strcmp(app.UserData.choice, 'Athlétisme') || strcmp(app.UserData.choice, 'Natation') || strcmp(app.UserData.choice, 'Tableau des médailles athlétisme') || strcmp(app.UserData.choice, 'Tableau des médailles natation') || strcmp(app.UserData.choice, 'Belgique aux JO') || strcmp(app.UserData.choice, 'Belgique aux CM d''athlétisme') || strcmp(app.UserData.choice, 'Belgique aux CM de natation') || strcmp(app.UserData.choice, 'Belgique aux CE d''athlétisme') || strcmp(app.UserData.choice, 'Disciplines des athlètes belges') || strcmp(app.UserData.choice, 'Palmares des athlètes belges')
        tolerance = 0;
    end
    if distance == 0  % Case-insensitive comparison
        app.UserData.score = app.UserData.score + 1;  % Increment score
        app.UserData.inputField.BackgroundColor = [0 1 0];
    elseif distance <= tolerance
        app.UserData.score = app.UserData.score + 1;  % Increment score
        app.UserData.inputField.BackgroundColor = [1 1 0];
    else
        app.UserData.inputField.BackgroundColor = [1 0 0];
        app.UserData.missedYears{end+1} = app.UserData.question;
        app.UserData.missedAnswers{end+1} = app.UserData.answer;
        app.UserData.missedIndices{end+1} = app.UserData.index;
    end
    app.UserData.answerField = uilabel(app, 'Text', sprintf('%s',app.UserData.answers{app.UserData.index}), ...
        'Position', [app.UserData.screenSize(3)/4-225, (app.UserData.screenSize(4)-80)/2-100, 1000, 50], ...
        'FontSize', 20);
    app.UserData.remainingYearsLabel.Text = sprintf('Nombre d''années trouvées: %d/%d', app.UserData.score, app.UserData.nbYears);
    app.UserData.questions(app.UserData.index) = [];
    app.UserData.answers(app.UserData.index) = [];

    % Update the score 
    app.UserData.scoreField.Text = sprintf('Score: %d/%d', app.UserData.score, app.UserData.nbTrials);

    app.UserData.confirmButton.Text = 'Suivant';
    app.UserData.confirmButton.ButtonPushedFcn = @(btn, event) reinitialisation(app);
    app.UserData.button = 0;
end