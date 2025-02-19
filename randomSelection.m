function randomSelection(app)
    rng('shuffle');
    if app.UserData.nbTrials >= app.UserData.nbMaxIterations
        app.UserData.questions = app.UserData.missedYears;
        app.UserData.answers = app.UserData.missedAnswers;
        app.UserData.nbMaxIterations = app.UserData.nbMaxIterations + length(app.UserData.missedYears);
        app.UserData.missedYears = {};
        app.UserData.missedAnswers = {};
    end
    if ~isempty(app.UserData.questions)
        app.UserData.index = randi([1, numel(app.UserData.questions)]);
        app.UserData.question = app.UserData.questions{app.UserData.index};
        app.UserData.answer = app.UserData.answers{app.UserData.index};
        if strcmp(app.UserData.choice, 'Grand Chelems hommes') || strcmp(app.UserData.choice, 'Grand Chelems femmes') || strcmp(app.UserData.choice, 'Tournois de tennis hommes') || strcmp(app.UserData.choice, 'Tournois de tennis femmes') || strcmp(app.UserData.choice, 'Records d''athlétisme') || strcmp(app.UserData.choice, 'Records de natation')
            for i = 1:length(app.UserData.answer)
                if app.UserData.answer(i) == '(' || app.UserData.answer(i) == '['
                    app.UserData.answer = app.UserData.answer(1:i-2);
                    break
                end
            end
        end
    else
        victory(app);
    end
end