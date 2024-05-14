classdef ShapesAppDesign < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        CircleTab                       matlab.ui.container.Tab
        CreateCircleButton              matlab.ui.control.Button
        RadiusEditFieldCircle           matlab.ui.control.NumericEditField
        RadiusEditFieldLabel            matlab.ui.control.Label
        ColorPickerCircle               matlab.ui.control.ColorPicker
        ColorPickerLabel                matlab.ui.control.Label
        RectangleTab                    matlab.ui.container.Tab
        ColorPickerRectangle            matlab.ui.control.ColorPicker
        ColorPicker_6Label              matlab.ui.control.Label
        CreateRectangleButton           matlab.ui.control.Button
        WidthEditFieldRectangle         matlab.ui.control.NumericEditField
        WidthEditFieldLabel             matlab.ui.control.Label
        LengthEditFieldRectangle        matlab.ui.control.NumericEditField
        LengthEditFieldLabel            matlab.ui.control.Label
        SquareTab                       matlab.ui.container.Tab
        ColorPickerSquare               matlab.ui.control.ColorPicker
        ColorPicker_7Label              matlab.ui.control.Label
        CreateSquareButton              matlab.ui.control.Button
        LengthEditFieldSquare           matlab.ui.control.NumericEditField
        LengthEditField_2Label          matlab.ui.control.Label
        TriangleTab                     matlab.ui.container.Tab
        CreateTriangleButton            matlab.ui.control.Button
        ColorPickerTriangle             matlab.ui.control.ColorPicker
        ColorPicker_8Label              matlab.ui.control.Label
        HeightEditFieldTriangle         matlab.ui.control.NumericEditField
        HeightEditFieldLabel            matlab.ui.control.Label
        BaseEditFieldTriangle           matlab.ui.control.NumericEditField
        BaseEditFieldLabel              matlab.ui.control.Label
        EquilateralTriangleTab          matlab.ui.container.Tab
        CreateEquilateralTriangleButton  matlab.ui.control.Button
        ColorPickerEquilateralTriangle  matlab.ui.control.ColorPicker
        ColorPicker_9Label              matlab.ui.control.Label
        SideLengthEditFieldEquilateralTriangle  matlab.ui.control.NumericEditField
        SideLengthEditFieldLabel        matlab.ui.control.Label
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Value changed function: RadiusEditFieldCircle
        function RadiusEditFieldCircleValueChanged(app, event)
            cirRadius = app.RadiusEditFieldCircle.Value;
            
        end

        % Button pushed function: CreateCircleButton
        function CreateCircleButtonPushed(app, event)
            circle = Circle(app.RadiusEditFieldCircle.Value, app.ColorPickerCircle.Value);
            circle.Draw();
        end

        % Callback function: ColorPickerCircle
        function ColorPickerCircleValueChanged(app, event)
            cirColor = app.ColorPickerCircle.Value;
            
        end

        % Callback function: ColorPickerRectangle
        function ColorPickerRectangleValueChanged(app, event)
            recColor = app.ColorPickerRectangle.Value;
            
        end

        % Value changed function: LengthEditFieldRectangle
        function LengthEditFieldRectangleValueChanged(app, event)
            recLength = app.LengthEditFieldRectangle.Value;
            
        end

        % Value changed function: WidthEditFieldRectangle
        function WidthEditFieldRectangleValueChanged(app, event)
            recWidth = app.WidthEditFieldRectangle.Value;
            
        end

        % Button pushed function: CreateRectangleButton
        function CreateRectangleButtonPushed(app, event)
            rectangle = Rectangle(app.LengthEditFieldRectangle.Value, app.WidthEditFieldRectangle.Value ...
                , app.ColorPickerRectangle.Value);
            rectangle.Draw();
        end

        % Callback function: ColorPickerSquare
        function ColorPickerSquareValueChanged(app, event)
            squColor = app.ColorPickerSquare.Value;
            
        end

        % Value changed function: LengthEditFieldSquare
        function LengthEditFieldSquareValueChanged(app, event)
            squLength = app.LengthEditFieldSquare.Value;
            
        end

        % Button pushed function: CreateSquareButton
        function CreateSquareButtonPushed(app, event)
            square = Square(app.LengthEditFieldSquare.Value, app.ColorPickerSquare.Value);
            square.Draw();
        end

        % Callback function: ColorPickerTriangle
        function ColorPickerTriangleValueChanged(app, event)
            triColor = app.ColorPickerTriangle.Value;
            
        end

        % Value changed function: BaseEditFieldTriangle
        function BaseEditFieldTriangleValueChanged(app, event)
            triBase = app.BaseEditFieldTriangle.Value;
            
        end

        % Value changed function: HeightEditFieldTriangle
        function HeightEditFieldTriangleValueChanged(app, event)
            triHeight = app.HeightEditFieldTriangle.Value;
            
        end

        % Button pushed function: CreateTriangleButton
        function CreateTriangleButtonPushed(app, event)
            triangle = Triangle(app.BaseEditFieldTriangle.Value, app.HeightEditFieldTriangle.Value, ...
                app.ColorPickerTriangle.Value);
            triangle.Draw();
        end

        % Callback function: ColorPickerEquilateralTriangle
        function ColorPickerEquilateralTriangleValueChanged(app, event)
            equtriColor = app.ColorPickerEquilateralTriangle.Value;
            
        end

        % Value changed function: SideLengthEditFieldEquilateralTriangle
        function SideLengthEditFieldEquilateralTriangleValueChanged(app, event)
            equitriSideLength = app.SideLengthEditFieldEquilateralTriangle.Value;
            
        end

        % Button pushed function: CreateEquilateralTriangleButton
        function CreateEquilateralTriangleButtonPushed(app, event)
            equilateraltriangle = EquilateralTriangle(app.SideLengthEditFieldEquilateralTriangle.Value, ...
                app.ColorPickerEquilateralTriangle.Value);
            equilateraltriangle.Draw();
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 458 481];
            app.UIFigure.Name = 'MATLAB App';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [9 9 442 464];

            % Create CircleTab
            app.CircleTab = uitab(app.TabGroup);
            app.CircleTab.Title = 'Circle';

            % Create ColorPickerLabel
            app.ColorPickerLabel = uilabel(app.CircleTab);
            app.ColorPickerLabel.HorizontalAlignment = 'right';
            app.ColorPickerLabel.Position = [175 364 70 22];
            app.ColorPickerLabel.Text = 'Color Picker';

            % Create ColorPickerCircle
            app.ColorPickerCircle = uicolorpicker(app.CircleTab);
            app.ColorPickerCircle.ValueChangedFcn = createCallbackFcn(app, @ColorPickerCircleValueChanged, true);
            app.ColorPickerCircle.Position = [260 364 38 22];

            % Create RadiusEditFieldLabel
            app.RadiusEditFieldLabel = uilabel(app.CircleTab);
            app.RadiusEditFieldLabel.HorizontalAlignment = 'right';
            app.RadiusEditFieldLabel.Position = [151 292 42 22];
            app.RadiusEditFieldLabel.Text = 'Radius';

            % Create RadiusEditFieldCircle
            app.RadiusEditFieldCircle = uieditfield(app.CircleTab, 'numeric');
            app.RadiusEditFieldCircle.ValueChangedFcn = createCallbackFcn(app, @RadiusEditFieldCircleValueChanged, true);
            app.RadiusEditFieldCircle.Position = [208 292 100 22];

            % Create CreateCircleButton
            app.CreateCircleButton = uibutton(app.CircleTab, 'push');
            app.CreateCircleButton.ButtonPushedFcn = createCallbackFcn(app, @CreateCircleButtonPushed, true);
            app.CreateCircleButton.Position = [181 204 100 23];
            app.CreateCircleButton.Text = 'Create shape!';

            % Create RectangleTab
            app.RectangleTab = uitab(app.TabGroup);
            app.RectangleTab.Title = 'Rectangle';

            % Create LengthEditFieldLabel
            app.LengthEditFieldLabel = uilabel(app.RectangleTab);
            app.LengthEditFieldLabel.HorizontalAlignment = 'right';
            app.LengthEditFieldLabel.Position = [142 304 42 22];
            app.LengthEditFieldLabel.Text = 'Length';

            % Create LengthEditFieldRectangle
            app.LengthEditFieldRectangle = uieditfield(app.RectangleTab, 'numeric');
            app.LengthEditFieldRectangle.ValueChangedFcn = createCallbackFcn(app, @LengthEditFieldRectangleValueChanged, true);
            app.LengthEditFieldRectangle.Position = [199 304 100 22];

            % Create WidthEditFieldLabel
            app.WidthEditFieldLabel = uilabel(app.RectangleTab);
            app.WidthEditFieldLabel.HorizontalAlignment = 'right';
            app.WidthEditFieldLabel.Position = [145 241 36 22];
            app.WidthEditFieldLabel.Text = 'Width';

            % Create WidthEditFieldRectangle
            app.WidthEditFieldRectangle = uieditfield(app.RectangleTab, 'numeric');
            app.WidthEditFieldRectangle.ValueChangedFcn = createCallbackFcn(app, @WidthEditFieldRectangleValueChanged, true);
            app.WidthEditFieldRectangle.Position = [196 241 100 22];

            % Create CreateRectangleButton
            app.CreateRectangleButton = uibutton(app.RectangleTab, 'push');
            app.CreateRectangleButton.ButtonPushedFcn = createCallbackFcn(app, @CreateRectangleButtonPushed, true);
            app.CreateRectangleButton.Position = [187 167 100 23];
            app.CreateRectangleButton.Text = 'Create shape!';

            % Create ColorPicker_6Label
            app.ColorPicker_6Label = uilabel(app.RectangleTab);
            app.ColorPicker_6Label.HorizontalAlignment = 'right';
            app.ColorPicker_6Label.Position = [175 364 70 22];
            app.ColorPicker_6Label.Text = 'Color Picker';

            % Create ColorPickerRectangle
            app.ColorPickerRectangle = uicolorpicker(app.RectangleTab);
            app.ColorPickerRectangle.ValueChangedFcn = createCallbackFcn(app, @ColorPickerRectangleValueChanged, true);
            app.ColorPickerRectangle.Position = [260 364 38 22];

            % Create SquareTab
            app.SquareTab = uitab(app.TabGroup);
            app.SquareTab.Title = 'Square';

            % Create LengthEditField_2Label
            app.LengthEditField_2Label = uilabel(app.SquareTab);
            app.LengthEditField_2Label.HorizontalAlignment = 'right';
            app.LengthEditField_2Label.Position = [151 292 42 22];
            app.LengthEditField_2Label.Text = 'Length';

            % Create LengthEditFieldSquare
            app.LengthEditFieldSquare = uieditfield(app.SquareTab, 'numeric');
            app.LengthEditFieldSquare.ValueChangedFcn = createCallbackFcn(app, @LengthEditFieldSquareValueChanged, true);
            app.LengthEditFieldSquare.Position = [208 292 100 22];

            % Create CreateSquareButton
            app.CreateSquareButton = uibutton(app.SquareTab, 'push');
            app.CreateSquareButton.ButtonPushedFcn = createCallbackFcn(app, @CreateSquareButtonPushed, true);
            app.CreateSquareButton.Position = [187 208 100 23];
            app.CreateSquareButton.Text = 'Create shape!';

            % Create ColorPicker_7Label
            app.ColorPicker_7Label = uilabel(app.SquareTab);
            app.ColorPicker_7Label.HorizontalAlignment = 'right';
            app.ColorPicker_7Label.Position = [175 364 70 22];
            app.ColorPicker_7Label.Text = 'Color Picker';

            % Create ColorPickerSquare
            app.ColorPickerSquare = uicolorpicker(app.SquareTab);
            app.ColorPickerSquare.ValueChangedFcn = createCallbackFcn(app, @ColorPickerSquareValueChanged, true);
            app.ColorPickerSquare.Position = [260 364 38 22];

            % Create TriangleTab
            app.TriangleTab = uitab(app.TabGroup);
            app.TriangleTab.Title = 'Triangle';

            % Create BaseEditFieldLabel
            app.BaseEditFieldLabel = uilabel(app.TriangleTab);
            app.BaseEditFieldLabel.HorizontalAlignment = 'right';
            app.BaseEditFieldLabel.Position = [158 292 32 22];
            app.BaseEditFieldLabel.Text = 'Base';

            % Create BaseEditFieldTriangle
            app.BaseEditFieldTriangle = uieditfield(app.TriangleTab, 'numeric');
            app.BaseEditFieldTriangle.ValueChangedFcn = createCallbackFcn(app, @BaseEditFieldTriangleValueChanged, true);
            app.BaseEditFieldTriangle.Position = [205 292 100 22];

            % Create HeightEditFieldLabel
            app.HeightEditFieldLabel = uilabel(app.TriangleTab);
            app.HeightEditFieldLabel.HorizontalAlignment = 'right';
            app.HeightEditFieldLabel.Position = [153 230 40 22];
            app.HeightEditFieldLabel.Text = 'Height';

            % Create HeightEditFieldTriangle
            app.HeightEditFieldTriangle = uieditfield(app.TriangleTab, 'numeric');
            app.HeightEditFieldTriangle.ValueChangedFcn = createCallbackFcn(app, @HeightEditFieldTriangleValueChanged, true);
            app.HeightEditFieldTriangle.Position = [208 230 100 22];

            % Create ColorPicker_8Label
            app.ColorPicker_8Label = uilabel(app.TriangleTab);
            app.ColorPicker_8Label.HorizontalAlignment = 'right';
            app.ColorPicker_8Label.Position = [175 364 70 22];
            app.ColorPicker_8Label.Text = 'Color Picker';

            % Create ColorPickerTriangle
            app.ColorPickerTriangle = uicolorpicker(app.TriangleTab);
            app.ColorPickerTriangle.ValueChangedFcn = createCallbackFcn(app, @ColorPickerTriangleValueChanged, true);
            app.ColorPickerTriangle.Position = [260 364 38 22];

            % Create CreateTriangleButton
            app.CreateTriangleButton = uibutton(app.TriangleTab, 'push');
            app.CreateTriangleButton.ButtonPushedFcn = createCallbackFcn(app, @CreateTriangleButtonPushed, true);
            app.CreateTriangleButton.Position = [187 158 100 23];
            app.CreateTriangleButton.Text = 'Create shape!';

            % Create EquilateralTriangleTab
            app.EquilateralTriangleTab = uitab(app.TabGroup);
            app.EquilateralTriangleTab.Title = 'Equilateral Triangle';

            % Create SideLengthEditFieldLabel
            app.SideLengthEditFieldLabel = uilabel(app.EquilateralTriangleTab);
            app.SideLengthEditFieldLabel.HorizontalAlignment = 'right';
            app.SideLengthEditFieldLabel.Position = [129 292 69 22];
            app.SideLengthEditFieldLabel.Text = 'Side Length';

            % Create SideLengthEditFieldEquilateralTriangle
            app.SideLengthEditFieldEquilateralTriangle = uieditfield(app.EquilateralTriangleTab, 'numeric');
            app.SideLengthEditFieldEquilateralTriangle.ValueChangedFcn = createCallbackFcn(app, @SideLengthEditFieldEquilateralTriangleValueChanged, true);
            app.SideLengthEditFieldEquilateralTriangle.Position = [213 292 100 22];

            % Create ColorPicker_9Label
            app.ColorPicker_9Label = uilabel(app.EquilateralTriangleTab);
            app.ColorPicker_9Label.HorizontalAlignment = 'right';
            app.ColorPicker_9Label.Position = [175 364 70 22];
            app.ColorPicker_9Label.Text = 'Color Picker';

            % Create ColorPickerEquilateralTriangle
            app.ColorPickerEquilateralTriangle = uicolorpicker(app.EquilateralTriangleTab);
            app.ColorPickerEquilateralTriangle.ValueChangedFcn = createCallbackFcn(app, @ColorPickerEquilateralTriangleValueChanged, true);
            app.ColorPickerEquilateralTriangle.Position = [260 364 38 22];

            % Create CreateEquilateralTriangleButton
            app.CreateEquilateralTriangleButton = uibutton(app.EquilateralTriangleTab, 'push');
            app.CreateEquilateralTriangleButton.ButtonPushedFcn = createCallbackFcn(app, @CreateEquilateralTriangleButtonPushed, true);
            app.CreateEquilateralTriangleButton.Position = [182 208 100 23];
            app.CreateEquilateralTriangleButton.Text = 'Create shape!';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = ShapesAppDesign

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