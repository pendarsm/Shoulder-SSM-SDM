classdef Humerus_SDM_App < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                 matlab.ui.Figure
        PleaseEnterLabel         matlab.ui.control.Label
        PC1ScoreEditFieldLabel   matlab.ui.control.Label
        PC1ScoreEditField        matlab.ui.control.NumericEditField
        Slider_1                 matlab.ui.control.Slider
        CreateOutputFileButton   matlab.ui.control.Button
        PC2ScoreEditFieldLabel   matlab.ui.control.Label
        PC2ScoreEditField        matlab.ui.control.NumericEditField
        Slider_2                 matlab.ui.control.Slider
        PC3ScoreEditFieldLabel   matlab.ui.control.Label
        PC3ScoreEditField        matlab.ui.control.NumericEditField
        Slider_3                 matlab.ui.control.Slider
        PC4ScoreEditFieldLabel   matlab.ui.control.Label
        PC4ScoreEditField        matlab.ui.control.NumericEditField
        Slider_4                 matlab.ui.control.Slider
        PC5ScoreEditFieldLabel   matlab.ui.control.Label
        PC5ScoreEditField        matlab.ui.control.NumericEditField
        Slider_5                 matlab.ui.control.Slider
        PC6ScoreEditFieldLabel   matlab.ui.control.Label
        PC6ScoreEditField        matlab.ui.control.NumericEditField
        Slider_6                 matlab.ui.control.Slider
        PC7ScoreEditFieldLabel   matlab.ui.control.Label
        PC7ScoreEditField        matlab.ui.control.NumericEditField
        Slider_7                 matlab.ui.control.Slider
        PC8ScoreLabel            matlab.ui.control.Label
        PC8ScoreEditField        matlab.ui.control.NumericEditField
        Slider_8                 matlab.ui.control.Slider
        PC9ScoreEditFieldLabel   matlab.ui.control.Label
        PC9ScoreEditField        matlab.ui.control.NumericEditField
        Slider_9                 matlab.ui.control.Slider
        PC10ScoreEditFieldLabel  matlab.ui.control.Label
        PC10ScoreEditField       matlab.ui.control.NumericEditField
        Slider_10                matlab.ui.control.Slider
        TextArea                 matlab.ui.control.TextArea
    end

    
    properties (Access = private)
        input = zeros(1,10)% Description
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: CreateOutputFileButton
        function CreateOutputFileButtonPushed(app, event)
            Humerus_SDM(app.input)
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

        % Value changed function: PC6ScoreEditField
        function PC6ScoreEditFieldValueChanged(app, event)
            if (app.PC6ScoreEditField.Value <= app.Slider_6.Limits(2)) && (app.PC6ScoreEditField.Value >= app.Slider_6.Limits(1)) 
            app.Slider_6.Value = app.PC6ScoreEditField.Value;
            end
            app.input(6) = app.PC6ScoreEditField.Value;  
        end

        % Value changed function: PC7ScoreEditField
        function PC7ScoreEditFieldValueChanged(app, event)
            if (app.PC7ScoreEditField.Value <= app.Slider_7.Limits(2)) && (app.PC7ScoreEditField.Value >= app.Slider_7.Limits(1)) 
            app.Slider_7.Value = app.PC7ScoreEditField.Value;
            end
            app.input(7) = app.PC7ScoreEditField.Value;     
        end

        % Value changed function: PC8ScoreEditField
        function PC8ScoreEditFieldValueChanged(app, event)
            if (app.PC8ScoreEditField.Value <= app.Slider_8.Limits(2)) && (app.PC8ScoreEditField.Value >= app.Slider_8.Limits(1)) 
            app.Slider_8.Value = app.PC8ScoreEditField.Value;
            end
            app.input(8) = app.PC8ScoreEditField.Value;       
        end

        % Value changed function: PC9ScoreEditField
        function PC9ScoreEditFieldValueChanged(app, event)
            if (app.PC9ScoreEditField.Value <= app.Slider_9.Limits(2)) && (app.PC9ScoreEditField.Value >= app.Slider_9.Limits(1)) 
            app.Slider_9.Value = app.PC9ScoreEditField.Value;
            end
            app.input(9) = app.PC9ScoreEditField.Value;           
        end

        % Value changed function: PC10ScoreEditField
        function PC10ScoreEditFieldValueChanged(app, event)
            if (app.PC10ScoreEditField.Value <= app.Slider_10.Limits(2)) && (app.PC10ScoreEditField.Value >= app.Slider_10.Limits(1)) 
            app.Slider_10.Value = app.PC10ScoreEditField.Value;
            end
            app.input(10) = app.PC10ScoreEditField.Value;       
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

        % Value changed function: Slider_6
        function Slider_6ValueChanged(app, event)
           app.PC6ScoreEditField.Value = app.Slider_6.Value;
           app.input(6) = app.Slider_6.Value;
        end

        % Value changed function: Slider_7
        function Slider_7ValueChanged(app, event)
            app.PC7ScoreEditField.Value = app.Slider_7.Value;
            app.input(7) = app.Slider_7.Value;
        end

        % Value changed function: Slider_8
        function Slider_8ValueChanged(app, event)
            app.PC8ScoreEditField.Value = app.Slider_8.Value;
            app.input(8) = app.Slider_8.Value;
        end

        % Value changed function: Slider_9
        function Slider_9ValueChanged(app, event)
            app.PC9ScoreEditField.Value = app.Slider_9.Value;
            app.input(9) = app.Slider_9.Value;
        end

        % Value changed function: Slider_10
        function Slider_10ValueChanged(app, event)
            app.PC10ScoreEditField.Value = app.Slider_10.Value;
            app.input(10) = app.Slider_10.Value;
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'UI Figure';

            % Create PleaseEnterLabel
            app.PleaseEnterLabel = uilabel(app.UIFigure);
            app.PleaseEnterLabel.HorizontalAlignment = 'center';
            app.PleaseEnterLabel.Position = [65 391 547 70];
            app.PleaseEnterLabel.Text = '';

            % Create PC1ScoreEditFieldLabel
            app.PC1ScoreEditFieldLabel = uilabel(app.UIFigure);
            app.PC1ScoreEditFieldLabel.HorizontalAlignment = 'center';
            app.PC1ScoreEditFieldLabel.Position = [23 340 70 22];
            app.PC1ScoreEditFieldLabel.Text = 'PC 1 Score';

            % Create PC1ScoreEditField
            app.PC1ScoreEditField = uieditfield(app.UIFigure, 'numeric');
            app.PC1ScoreEditField.ValueChangedFcn = createCallbackFcn(app, @PC1ScoreEditFieldValueChanged, true);
            app.PC1ScoreEditField.HorizontalAlignment = 'center';
            app.PC1ScoreEditField.Position = [103 340 50 22];

            % Create Slider_1
            app.Slider_1 = uislider(app.UIFigure);
            app.Slider_1.Limits = [-3 3];
            app.Slider_1.MajorTicks = [-3 -2 -1 0 1 2 3];
            app.Slider_1.ValueChangedFcn = createCallbackFcn(app, @Slider_1ValueChanged, true);
            app.Slider_1.MinorTicks = [];
            app.Slider_1.Position = [173 350 109 3];

            % Create CreateOutputFileButton
            app.CreateOutputFileButton = uibutton(app.UIFigure, 'push');
            app.CreateOutputFileButton.ButtonPushedFcn = createCallbackFcn(app, @CreateOutputFileButtonPushed, true);
            app.CreateOutputFileButton.FontSize = 14;
            app.CreateOutputFileButton.FontWeight = 'bold';
            app.CreateOutputFileButton.Position = [252 15 137 24];
            app.CreateOutputFileButton.Text = 'Create Output File';

            % Create PC2ScoreEditFieldLabel
            app.PC2ScoreEditFieldLabel = uilabel(app.UIFigure);
            app.PC2ScoreEditFieldLabel.HorizontalAlignment = 'center';
            app.PC2ScoreEditFieldLabel.Position = [23 290 70 22];
            app.PC2ScoreEditFieldLabel.Text = 'PC 2 Score';

            % Create PC2ScoreEditField
            app.PC2ScoreEditField = uieditfield(app.UIFigure, 'numeric');
            app.PC2ScoreEditField.ValueChangedFcn = createCallbackFcn(app, @PC2ScoreEditFieldValueChanged, true);
            app.PC2ScoreEditField.HorizontalAlignment = 'center';
            app.PC2ScoreEditField.Position = [103 290 50 22];

            % Create Slider_2
            app.Slider_2 = uislider(app.UIFigure);
            app.Slider_2.Limits = [-3 3];
            app.Slider_2.MajorTicks = [-3 -2 -1 0 1 2 3];
            app.Slider_2.ValueChangedFcn = createCallbackFcn(app, @Slider_2ValueChanged, true);
            app.Slider_2.MinorTicks = [];
            app.Slider_2.Position = [173 300 109 3];

            % Create PC3ScoreEditFieldLabel
            app.PC3ScoreEditFieldLabel = uilabel(app.UIFigure);
            app.PC3ScoreEditFieldLabel.HorizontalAlignment = 'center';
            app.PC3ScoreEditFieldLabel.Position = [23 240 70 22];
            app.PC3ScoreEditFieldLabel.Text = 'PC 3 Score';

            % Create PC3ScoreEditField
            app.PC3ScoreEditField = uieditfield(app.UIFigure, 'numeric');
            app.PC3ScoreEditField.ValueChangedFcn = createCallbackFcn(app, @PC3ScoreEditFieldValueChanged, true);
            app.PC3ScoreEditField.HorizontalAlignment = 'center';
            app.PC3ScoreEditField.Position = [103 240 50 22];

            % Create Slider_3
            app.Slider_3 = uislider(app.UIFigure);
            app.Slider_3.Limits = [-3 3];
            app.Slider_3.MajorTicks = [-3 -2 -1 0 1 2 3];
            app.Slider_3.ValueChangedFcn = createCallbackFcn(app, @Slider_3ValueChanged, true);
            app.Slider_3.MinorTicks = [];
            app.Slider_3.Position = [173 250 109 3];

            % Create PC4ScoreEditFieldLabel
            app.PC4ScoreEditFieldLabel = uilabel(app.UIFigure);
            app.PC4ScoreEditFieldLabel.HorizontalAlignment = 'center';
            app.PC4ScoreEditFieldLabel.Position = [23 190 70 22];
            app.PC4ScoreEditFieldLabel.Text = 'PC 4 Score';

            % Create PC4ScoreEditField
            app.PC4ScoreEditField = uieditfield(app.UIFigure, 'numeric');
            app.PC4ScoreEditField.ValueChangedFcn = createCallbackFcn(app, @PC4ScoreEditFieldValueChanged, true);
            app.PC4ScoreEditField.HorizontalAlignment = 'center';
            app.PC4ScoreEditField.Position = [103 190 50 22];

            % Create Slider_4
            app.Slider_4 = uislider(app.UIFigure);
            app.Slider_4.Limits = [-3 3];
            app.Slider_4.MajorTicks = [-3 -2 -1 0 1 2 3];
            app.Slider_4.ValueChangedFcn = createCallbackFcn(app, @Slider_4ValueChanged, true);
            app.Slider_4.MinorTicks = [];
            app.Slider_4.Position = [173 200 109 3];

            % Create PC5ScoreEditFieldLabel
            app.PC5ScoreEditFieldLabel = uilabel(app.UIFigure);
            app.PC5ScoreEditFieldLabel.HorizontalAlignment = 'center';
            app.PC5ScoreEditFieldLabel.Position = [23 140 70 22];
            app.PC5ScoreEditFieldLabel.Text = 'PC 5 Score';

            % Create PC5ScoreEditField
            app.PC5ScoreEditField = uieditfield(app.UIFigure, 'numeric');
            app.PC5ScoreEditField.ValueChangedFcn = createCallbackFcn(app, @PC5ScoreEditFieldValueChanged, true);
            app.PC5ScoreEditField.HorizontalAlignment = 'center';
            app.PC5ScoreEditField.Position = [103 140 50 22];

            % Create Slider_5
            app.Slider_5 = uislider(app.UIFigure);
            app.Slider_5.Limits = [-3 3];
            app.Slider_5.MajorTicks = [-3 -2 -1 0 1 2 3];
            app.Slider_5.ValueChangedFcn = createCallbackFcn(app, @Slider_5ValueChanged, true);
            app.Slider_5.MinorTicks = [];
            app.Slider_5.Position = [173 150 109 3];

            % Create PC6ScoreEditFieldLabel
            app.PC6ScoreEditFieldLabel = uilabel(app.UIFigure);
            app.PC6ScoreEditFieldLabel.HorizontalAlignment = 'center';
            app.PC6ScoreEditFieldLabel.Position = [353 340 70 22];
            app.PC6ScoreEditFieldLabel.Text = 'PC 6 Score';

            % Create PC6ScoreEditField
            app.PC6ScoreEditField = uieditfield(app.UIFigure, 'numeric');
            app.PC6ScoreEditField.ValueChangedFcn = createCallbackFcn(app, @PC6ScoreEditFieldValueChanged, true);
            app.PC6ScoreEditField.HorizontalAlignment = 'center';
            app.PC6ScoreEditField.Position = [433 340 50 22];

            % Create Slider_6
            app.Slider_6 = uislider(app.UIFigure);
            app.Slider_6.Limits = [-3 3];
            app.Slider_6.MajorTicks = [-3 -2 -1 0 1 2 3];
            app.Slider_6.ValueChangedFcn = createCallbackFcn(app, @Slider_6ValueChanged, true);
            app.Slider_6.MinorTicks = [];
            app.Slider_6.Position = [503 350 109 3];

            % Create PC7ScoreEditFieldLabel
            app.PC7ScoreEditFieldLabel = uilabel(app.UIFigure);
            app.PC7ScoreEditFieldLabel.HorizontalAlignment = 'center';
            app.PC7ScoreEditFieldLabel.Position = [353 290 70 22];
            app.PC7ScoreEditFieldLabel.Text = 'PC 7 Score';

            % Create PC7ScoreEditField
            app.PC7ScoreEditField = uieditfield(app.UIFigure, 'numeric');
            app.PC7ScoreEditField.ValueChangedFcn = createCallbackFcn(app, @PC7ScoreEditFieldValueChanged, true);
            app.PC7ScoreEditField.HorizontalAlignment = 'center';
            app.PC7ScoreEditField.Position = [433 290 50 22];

            % Create Slider_7
            app.Slider_7 = uislider(app.UIFigure);
            app.Slider_7.Limits = [-3 3];
            app.Slider_7.MajorTicks = [-3 -2 -1 0 1 2 3];
            app.Slider_7.ValueChangedFcn = createCallbackFcn(app, @Slider_7ValueChanged, true);
            app.Slider_7.MinorTicks = [];
            app.Slider_7.Position = [503 300 109 3];

            % Create PC8ScoreLabel
            app.PC8ScoreLabel = uilabel(app.UIFigure);
            app.PC8ScoreLabel.HorizontalAlignment = 'center';
            app.PC8ScoreLabel.Position = [353 240 70 22];
            app.PC8ScoreLabel.Text = 'PC 8 Score';

            % Create PC8ScoreEditField
            app.PC8ScoreEditField = uieditfield(app.UIFigure, 'numeric');
            app.PC8ScoreEditField.ValueChangedFcn = createCallbackFcn(app, @PC8ScoreEditFieldValueChanged, true);
            app.PC8ScoreEditField.HorizontalAlignment = 'center';
            app.PC8ScoreEditField.Position = [433 240 50 22];

            % Create Slider_8
            app.Slider_8 = uislider(app.UIFigure);
            app.Slider_8.Limits = [-3 3];
            app.Slider_8.MajorTicks = [-3 -2 -1 0 1 2 3];
            app.Slider_8.ValueChangedFcn = createCallbackFcn(app, @Slider_8ValueChanged, true);
            app.Slider_8.MinorTicks = [];
            app.Slider_8.Position = [503 250 109 3];

            % Create PC9ScoreEditFieldLabel
            app.PC9ScoreEditFieldLabel = uilabel(app.UIFigure);
            app.PC9ScoreEditFieldLabel.HorizontalAlignment = 'center';
            app.PC9ScoreEditFieldLabel.Position = [353 190 70 22];
            app.PC9ScoreEditFieldLabel.Text = 'PC 9 Score';

            % Create PC9ScoreEditField
            app.PC9ScoreEditField = uieditfield(app.UIFigure, 'numeric');
            app.PC9ScoreEditField.ValueChangedFcn = createCallbackFcn(app, @PC9ScoreEditFieldValueChanged, true);
            app.PC9ScoreEditField.HorizontalAlignment = 'center';
            app.PC9ScoreEditField.Position = [433 190 50 22];

            % Create Slider_9
            app.Slider_9 = uislider(app.UIFigure);
            app.Slider_9.Limits = [-3 3];
            app.Slider_9.MajorTicks = [-3 -2 -1 0 1 2 3];
            app.Slider_9.ValueChangedFcn = createCallbackFcn(app, @Slider_9ValueChanged, true);
            app.Slider_9.MinorTicks = [];
            app.Slider_9.Position = [503 200 109 3];

            % Create PC10ScoreEditFieldLabel
            app.PC10ScoreEditFieldLabel = uilabel(app.UIFigure);
            app.PC10ScoreEditFieldLabel.HorizontalAlignment = 'center';
            app.PC10ScoreEditFieldLabel.Position = [353 140 74 22];
            app.PC10ScoreEditFieldLabel.Text = 'PC 10 Score';

            % Create PC10ScoreEditField
            app.PC10ScoreEditField = uieditfield(app.UIFigure, 'numeric');
            app.PC10ScoreEditField.ValueChangedFcn = createCallbackFcn(app, @PC10ScoreEditFieldValueChanged, true);
            app.PC10ScoreEditField.HorizontalAlignment = 'center';
            app.PC10ScoreEditField.Position = [433 140 50 22];

            % Create Slider_10
            app.Slider_10 = uislider(app.UIFigure);
            app.Slider_10.Limits = [-3 3];
            app.Slider_10.MajorTicks = [-3 -2 -1 0 1 2 3];
            app.Slider_10.ValueChangedFcn = createCallbackFcn(app, @Slider_10ValueChanged, true);
            app.Slider_10.MinorTicks = [];
            app.Slider_10.Position = [503 150 109 3];

            % Create TextArea
            app.TextArea = uitextarea(app.UIFigure);
            app.TextArea.HorizontalAlignment = 'center';
            app.TextArea.FontSize = 16;
            app.TextArea.FontWeight = 'bold';
            app.TextArea.Position = [1 396 640 65];
            app.TextArea.Value = {'Please specify the amount of perturbation (in terms of standard deviation) from the mean density distribution along each significant PC '};

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Humerus_SDM_App

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