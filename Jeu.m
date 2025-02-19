clear all; close all; clc; 

%% Close existing window game %%
figHandles = findall(groot, 'Type', 'figure');  % Find all figures
% Loop through all the handles and close only the uifigures
for i = 1:length(figHandles)
    % Check if the figure is a uifigure
    if isa(figHandles(i), 'matlab.ui.Figure')
        close(figHandles(i));  % Close the uifigure
    end
end

%% Create the main UI figure %%
screenSize = get(0, 'ScreenSize'); % [left, bottom, width, height]
app = uifigure('Name', 'Choice Window', 'Position', [screenSize(1), screenSize(2)+49, screenSize(3), screenSize(4)-80]);
app.UserData = struct();
app.UserData.screenSize = screenSize;

initialization(app);
