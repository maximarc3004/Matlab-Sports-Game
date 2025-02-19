function reinitialisation(app)
    app.UserData.confirmButton.Text = 'Confirmer';
    app.UserData.confirmButton.ButtonPushedFcn = @(btn, event) onConfirm(app);

    % Clear the input fields after confirmation
    app.UserData.inputField.Value = '';
    app.UserData.inputField.BackgroundColor = [1 1 1];
    delete(app.UserData.answerField);

    % Select randomly another contry and find the associated capital
    randomSelection(app);

    if ~isempty(app.UserData.questions)
        % Update the country label text
        app.UserData.questionLabel.Text = "Année: "+app.UserData.question;
    end
end