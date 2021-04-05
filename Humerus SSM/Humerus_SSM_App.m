classdef Humerus_SSM_App < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                matlab.ui.Figure
        PleaseEnterLabel        matlab.ui.control.Label
        PC1ScoreEditFieldLabel  matlab.ui.control.Label
        PC1ScoreEditField       matlab.ui.control.NumericEditField
        Slider_1                matlab.ui.control.Slider
        CreateOutputFileButton  matlab.ui.control.Button
        PC2ScoreEditFieldLabel  matlab.ui.control.Label
        PC2ScoreEditField       matlab.ui.control.NumericEditField
        Slider_2                matlab.ui.control.Slider
        PC3ScoreEditFieldLabel  matlab.ui.control.Label
        PC3ScoreEditField       matlab.ui.control.NumericEditField
        Slider_3                matlab.ui.control.Slider
        PC4ScoreEditFieldLabel  matlab.ui.control.Label
        PC4ScoreEditField       matlab.ui.control.NumericEditField
        Slider_4                matlab.ui.control.Slider
        PC5ScoreEditFieldLabel  matlab.ui.control.Label
        PC5ScoreEditField       matlab.ui.control.NumericEditField
        Slider_5                matlab.ui.control.Slider
        TextArea                matlab.ui.control.TextArea
    end

    
    properties (Access = private)
        input = zeros(1,5)% Description
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: CreateOutputFileButton
        function CreateOutputFileButtonPushed(app, event)
            Humerus_SSM(app.input)
        end

        % Value changed function: PC1ScoreEditField
        function PC1ScoreEditFieldValueChanged(app, event)
            if (app.PC1ScoreEditField.Value <= app.Slider_1.Limits(2)) && (app.PC1ScoreEditField.Value >= app.Slider_1.Limits(1)) 
            app.Slider_1.Value = app.PC1ScoreEditField.Value;
            end
            app.input(1) = app.PC1ScoreEditField.Value;
        end

        % Value changed function: PC2ScoreEditField
        function PC2ScoreEditFieldValueChanged(app, event)
            if (app.PC2ScoreEditField.Value <= app.Slider_2.Limits(2)) && (app.PC2ScoreEditField.Value >= app.Slider_2.Limits(1)) 
            app.Slider_2.Value = app.PC2ScoreEditField.Value;
            end
            app.input(2) = app.PC2ScoreEditField.Value;    
        end

        % Value changed function: PC3ScoreEditField
        function PC3ScoreEditFieldValueChanged(app, event)
            if (app.PC3ScoreEditField.Value <= app.Slider_3.Limits(2)) && (app.PC3ScoreEditField.Value >= app.Slider_3.Limits(1)) 
            app.Slider_3.Value = app.PC3ScoreEditField.Value;
            end
            app.input(3) = app.PC3ScoreEditField.Value;
        end

        % Value changed function: PC4ScoreEditField
        function PC4ScoreEditFieldValueChanged(app, event)
            if (app.PC4ScoreEditField.Value <= app.Slider_4.Limits(2)) && (app.PC4ScoreEditField.Value >= app.Slider_4.Limits(1)) 
            app.Slider_4.Value = app.PC4ScoreEditField.Value;
            end
            app.input(4) = app.PC4ScoreEditField.Value;  
        end

        % Value changed function: PC5ScoreEditField
        function PC5ScoreEditFieldValueChanged(app, event)
            if (app.PC5ScoreEditField.Value <= app.Slider_5.Limits(2)) && (app.PC5ScoreEditField.Value >= app.Slider_5.Limits(1)) 
            app.Slider_5.Value = app.PC5ScoreEditField.Value;
            end
            app.input(5) = app.PC5ScoreEditField.Value; 
        end

        % Value changed function: Slider_1
        function Slider_1ValueChanged(app, event)
            app.PC1ScoreEditField.Value = app.Slider_1.Value;
            app.input(1) = app.Slider_1.Value;
        end

        % Value changed function: Slider_2
        function Slider_2ValueChanged(app, event)
            app.PC2ScoreEditField.Value = app.Slider_2.Value;
            app.input(2) = app.Slider_2.Value;
        end

        % Value changed function: Slider_3
        function Slider_3ValueChanged(app, event)
           app.PC3ScoreEditField.Value = app.Slider_3.Value;
           app.input(3) = app.Slider_3.Value;     
        end

        % Value changed function: Slider_4
        function Slider_4ValueChanged(app, event)
            app.PC4ScoreEditField.Value = app.Slider_4.Value;
            app.input(4) = app.Slider_4.Value;
        end

        % Value changed function: Slider_5
        function Slider_5ValueChanged(app, event)
            app.PC5ScoreEditField.Value = app.Slider_5.Value;
            app.input(5) = app.Slider_5.Value;
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 419];
            app.UIFigure.Name = 'UI Figure';

            % Create PleaseEnterLabel
            app.PleaseEnterLabel = uilabel(app.UIFigure);
            app.PleaseEnterLabel.HorizontalAlignment = 'center';
            app.PleaseEnterLabel.Position = [65 330 547 70];
            app.PleaseEnterLabel.Text = '';

            % Create PC1ScoreEditFieldLabel
            app.PC1ScoreEditFieldLabel = uilabel(app.UIFigure);
            app.PC1ScoreEditFieldLabel.HorizontalAlignment = 'center';
            app.PC1ScoreEditFieldLabel.Position = [188 309 70 22];
            app.PC1ScoreEditFieldLabel.Text = 'PC 1 Score';

            % Create PC1ScoreEditField
            app.PC1ScoreEditField = uieditfield(app.UIFigure, 'numeric');
            app.PC1ScoreEditField.ValueChangedFcn = createCallbackFcn(app, @PC1ScoreEditFieldValueChanged, true);
            app.PC1ScoreEditField.HorizontalAlignment = 'center';
            app.PC1ScoreEditField.Position = [268 309 50 22];

            % Create Slider_1
            app.Slider_1 = uislider(app.UIFigure);
            app.Slider_1.Limits = [-3 3];
            app.Slider_1.MajorTicks = [-3 -2 -1 0 1 2 3];
            app.Slider_1.ValueChangedFcn = createCallbackFcn(app, @Slider_1ValueChanged, true);
            app.Slider_1.MinorTicks = [];
            app.Slider_1.Position = [338 319 109 3];

            % Create CreateOutputFileButton
            app.CreateOutputFileButton = uibutton(app.UIFigure, 'push');
            app.CreateOutputFileButton.ButtonPushedFcn = createCallbackFcn(app, @CreateOutputFileButtonPushed, true);
            app.CreateOutputFileButton.FontSize = 14;
            app.CreateOutputFileButton.FontWeight = 'bold';
            app.CreateOutputFileButton.Position = [252 39 137 24];
            app.CreateOutputFileButton.Text = 'Create Output File';

            % Create PC2ScoreEditFieldLabel
            app.PC2ScoreEditFieldLabel = uilabel(app.UIFigure);
            app.PC2ScoreEditFieldLabel.HorizontalAlignment = 'center';
            app.PC2ScoreEditFieldLabel.Position = [188 259 70 22];
            app.PC2ScoreEditFieldLabel.Text = 'PC 2 Score';

            % Create PC2ScoreEditField
            app.PC2ScoreEditField = uieditfield(app.UIFigure, 'numeric');
            app.PC2ScoreEditField.ValueChangedFcn = createCallbackFcn(app, @PC2ScoreEditFieldValueChanged, true);
            app.PC2ScoreEditField.HorizontalAlignment = 'center';
            app.PC2ScoreEditField.Position = [268 259 50 22];

            % Create Slider_2
            app.Slider_2 = uislider(app.UIFigure);
            app.Slider_2.Limits = [-3 3];
            app.Slider_2.MajorTicks = [-3 -2 -1 0 1 2 3];
            app.Slider_2.ValueChangedFcn = createCallbackFcn(app, @Slider_2ValueChanged, true);
            app.Slider_2.MinorTicks = [];
            app.Slider_2.Position = [338 269 109 3];

            % Create PC3ScoreEditFieldLabel
            app.PC3ScoreEditFieldLabel = uilabel(app.UIFigure);
            app.PC3ScoreEditFieldLabel.HorizontalAlignment = 'center';
            app.PC3ScoreEditFieldLabel.Position = [188 209 70 22];
            app.PC3ScoreEditFieldLabel.Text = 'PC 3 Score';

            % Create PC3ScoreEditField
            app.PC3ScoreEditField = uieditfield(app.UIFigure, 'numeric');
            app.PC3ScoreEditField.ValueChangedFcn = createCallbackFcn(app, @PC3ScoreEditFieldValueChanged, true);
            app.PC3ScoreEditField.HorizontalAlignment = 'center';
            app.PC3ScoreEditField.Position = [268 209 50 22];

            % Create Slider_3
            app.Slider_3 = uislider(app.UIFigure);
            app.Slider_3.Limits = [-3 3];
            app.Slider_3.MajorTicks = [-3 -2 -1 0 1 2 3];
            app.Slider_3.ValueChangedFcn = createCallbackFcn(app, @Slider_3ValueChanged, true);
            app.Slider_3.MinorTicks = [];
            app.Slider_3.Position = [338 219 109 3];

            % Create PC4ScoreEditFieldLabel
            app.PC4ScoreEditFieldLabel = uilabel(app.UIFigure);
            app.PC4ScoreEditFieldLabel.HorizontalAlignment = 'center';
            app.PC4ScoreEditFieldLabel.Position = [188 159 70 22];
            app.PC4ScoreEditFieldLabel.Text = 'PC 4 Score';

            % Create PC4ScoreEditField
            app.PC4ScoreEditField = uieditfield(app.UIFigure, 'numeric');
            app.PC4ScoreEditField.ValueChangedFcn = createCallbackFcn(app, @PC4ScoreEditFieldValueChanged, true);
            app.PC4ScoreEditField.HorizontalAlignment = 'center';
            app.PC4ScoreEditField.Position = [268 159 50 22];

            % Create Slider_4
            app.Slider_4 = uislider(app.UIFigure);
            app.Slider_4.Limits = [-3 3];
            app.Slider_4.MajorTicks = [-3 -2 -1 0 1 2 3];
            app.Slider_4.ValueChangedFcn = createCallbackFcn(app, @Slider_4ValueChanged, true);
            app.Slider_4.MinorTicks = [];
            app.Slider_4.Position = [338 169 109 3];

            % Create PC5ScoreEditFieldLabel
            app.PC5ScoreEditFieldLabel = uilabel(app.UIFigure);
            app.PC5ScoreEditFieldLabel.HorizontalAlignment = 'center';
            app.PC5ScoreEditFieldLabel.Position = [188 109 70 22];
            app.PC5ScoreEditFieldLabel.Text = 'PC 5 Score';

            % Create PC5ScoreEditField
            app.PC5ScoreEditField = uieditfield(app.UIFigure, 'numeric');
            app.PC5ScoreEditField.ValueChangedFcn = createCallbackFcn(app, @PC5ScoreEditFieldValueChanged, true);
            app.PC5ScoreEditField.HorizontalAlignment = 'center';
            app.PC5ScoreEditField.Position = [268 109 50 22];

            % Create Slider_5
            app.Slider_5 = uislider(app.UIFigure);
            app.Slider_5.Limits = [-3 3];
            app.Slider_5.MajorTicks = [-3 -2 -1 0 1 2 3];
            app.Slider_5.ValueChangedFcn = createCallbackFcn(app, @Slider_5ValueChanged, true);
            app.Slider_5.MinorTicks = [];
            app.Slider_5.Position = [338 119 109 3];

            % Create TextArea
            app.TextArea = uitextarea(app.UIFigure);
            app.TextArea.HorizontalAlignment = 'center';
            app.TextArea.FontSize = 16;
            app.TextArea.FontWeight = 'bold';
            app.TextArea.Position = [1 355 640 65];
            app.TextArea.Value = {'Please specify the amount of perturbation (in terms of standard deviation) from the mean geometry along each significant PC '};

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Humerus_SSM_App

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end