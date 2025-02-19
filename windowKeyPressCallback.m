% Define the callback function for enter key press
function windowKeyPressCallback(app, event)
    % Retrieve the editField handle from the figure's UserData
    inputField = app.UserData.inputField;
    
    % Check if the focused component is the uieditfield
    if app.CurrentObject == inputField
        % Check if the Enter key was pressed
        if strcmp(event.Key, 'return')
            if app.UserData.button == 1
                onConfirm(app)
            else 
                reinitialisation(app)
                app.UserData.button = 1;
            end
        end
    end
end