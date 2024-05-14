classdef ShapesAppDesignV2 < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure               matlab.ui.Figure
        TabGroup               matlab.ui.container.TabGroup
        Circle                 matlab.ui.container.Tab
        createCircle           matlab.ui.control.Button
        circleRadius           matlab.ui.control.Slider
        RadiusLabel            matlab.ui.control.Label
        circleColor            matlab.ui.control.ColorPicker
        ColorPicker_5Label     matlab.ui.control.Label
        Rectangle              matlab.ui.container.Tab
        createRectangle        matlab.ui.control.Button
        rectangleWidth         matlab.ui.control.Slider
        RadiusLabel_7          matlab.ui.control.Label
        rectangleLength        matlab.ui.control.Slider
        RadiusLabel_2          matlab.ui.control.Label
        rectangleColor         matlab.ui.control.ColorPicker
        ColorPicker_4Label     matlab.ui.control.Label
        Square                 matlab.ui.container.Tab
        createSquare           matlab.ui.control.Button
        squareSideLength       matlab.ui.control.Slider
        RadiusLabel_3          matlab.ui.control.Label
        squareColor            matlab.ui.control.ColorPicker
        ColorPicker_3Label     matlab.ui.control.Label
        Triangle               matlab.ui.container.Tab
        createTriangle         matlab.ui.control.Button
        triangleHeight         matlab.ui.control.Slider
        RadiusLabel_6          matlab.ui.control.Label
        triangleBase           matlab.ui.control.Slider
        RadiusLabel_4          matlab.ui.control.Label
        triangleColor          matlab.ui.control.ColorPicker
        ColorPicker_2Label     matlab.ui.control.Label
        EquilateralTriangle    matlab.ui.container.Tab
        createEquilateral      matlab.ui.control.Button
        equilateralSideLength  matlab.ui.control.Slider
        RadiusLabel_5          matlab.ui.control.Label
        equilateralColor       matlab.ui.control.ColorPicker
        ColorPickerLabel       matlab.ui.control.Label
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Callback function: circleColor
        function circleColorValueChanged(app, event)
            value = app.circleColor.Value;
            
        end

        % Button pushed function: createCircle
        function createCircleButtonPushed(app, event)
            circle = Circle(app.circleRadius.Value, app.circleColor.Value);
            circle.Draw();
        end

        % Value changed function: circleRadius
        function circleRadiusValueChanged(app, event)
            value = app.circleRadius.Value;
            
        end

        % Button pushed function: createRectangle
        function createRectangleButtonPushed(app, event)
            rectangle = Rectangle(app.rectangleLength.Value, app.rectangleWidth.Value, ...
                app.rectangleColor.Value);
            rectangle.Draw();
        end

        % Value changed function: rectangleWidth
        function rectangleWidthValueChanged(app, event)
            value = app.rectangleWidth.Value;
            
        end

        % Value changed function: rectangleLength
        function rectangleLengthValueChanged(app, event)
            value = app.rectangleLength.Value;
            
        end

        % Callback function: rectangleColor
        function rectangleColorValueChanged(app, event)
            value = app.rectangleColor.Value;
            
        end

        % Button pushed function: createSquare
        function createSquareButtonPushed(app, event)
            square = Square(app.squareSideLength.Value, app.squareColor.Value);
            square.Draw();
        end

        % Value changed function: squareSideLength
        function squareSideLengthValueChanged(app, event)
            value = app.squareSideLength.Value;
            
        end

        % Callback function: squareColor
        function squareColorValueChanged(app, event)
            value = app.squareColor.Value;
            
        end

        % Button pushed function: createTriangle
        function createTriangleButtonPushed(app, event)
            triangle = Triangle(app.triangleBase.Value, app.triangleHeight.Value, ...
                app.triangleColor.Value);
            triangle.Draw();
        end

        % Value changed function: triangleHeight
        function triangleHeightValueChanged(app, event)
            value = app.triangleHeight.Value;
            
        end

        % Value changed function: triangleBase
        function triangleBaseValueChanged(app, event)
            value = app.triangleBase.Value;
            
        end

        % Callback function: triangleColor
        function triangleColorValueChanged(app, event)
            value = app.triangleColor.Value;
            
        end

        % Button pushed function: createEquilateral
        function createEquilateralButtonPushed(app, event)
            equilateralTriangle = EquilateralTriangle(app.equilateralSideLength.Value, ...
                app.equilateralColor.Value);
            equilateralTriangle.Draw();
        end

        % Value changed function: equilateralSideLength
        function equilateralSideLengthValueChanged(app, event)
            value = app.equilateralSideLength.Value;
            
        end

        % Callback function: equilateralColor
        function equilateralColorValueChanged(app, event)
            value = app.equilateralColor.Value;
            
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 467 478];
            app.UIFigure.Name = 'MATLAB App';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [13 12 443 454];

            % Create Circle
            app.Circle = uitab(app.TabGroup);
            app.Circle.Title = 'Circle';

            % Create ColorPicker_5Label
            app.ColorPicker_5Label = uilabel(app.Circle);
            app.ColorPicker_5Label.HorizontalAlignment = 'right';
            app.ColorPicker_5Label.Position = [160 346 70 22];
            app.ColorPicker_5Label.Text = 'Color Picker';

            % Create circleColor
            app.circleColor = uicolorpicker(app.Circle);
            app.circleColor.ValueChangedFcn = createCallbackFcn(app, @circleColorValueChanged, true);
            app.circleColor.Position = [245 346 38 22];

            % Create RadiusLabel
            app.RadiusLabel = uilabel(app.Circle);
            app.RadiusLabel.HorizontalAlignment = 'right';
            app.RadiusLabel.Position = [107 283 42 22];
            app.RadiusLabel.Text = 'Radius';

            % Create circleRadius
            app.circleRadius = uislider(app.Circle);
            app.circleRadius.ValueChangedFcn = createCallbackFcn(app, @circleRadiusValueChanged, true);
            app.circleRadius.Position = [170 292 150 3];

            % Create createCircle
            app.createCircle = uibutton(app.Circle, 'push');
            app.createCircle.ButtonPushedFcn = createCallbackFcn(app, @createCircleButtonPushed, true);
            app.createCircle.Position = [170 100 100 23];
            app.createCircle.Text = 'Create shape!';

            % Create Rectangle
            app.Rectangle = uitab(app.TabGroup);
            app.Rectangle.Title = 'Rectangle';

            % Create ColorPicker_4Label
            app.ColorPicker_4Label = uilabel(app.Rectangle);
            app.ColorPicker_4Label.HorizontalAlignment = 'right';
            app.ColorPicker_4Label.Position = [160 346 70 22];
            app.ColorPicker_4Label.Text = 'Color Picker';

            % Create rectangleColor
            app.rectangleColor = uicolorpicker(app.Rectangle);
            app.rectangleColor.ValueChangedFcn = createCallbackFcn(app, @rectangleColorValueChanged, true);
            app.rectangleColor.Position = [245 346 38 22];

            % Create RadiusLabel_2
            app.RadiusLabel_2 = uilabel(app.Rectangle);
            app.RadiusLabel_2.HorizontalAlignment = 'right';
            app.RadiusLabel_2.Position = [107 283 42 22];
            app.RadiusLabel_2.Text = 'Length';

            % Create rectangleLength
            app.rectangleLength = uislider(app.Rectangle);
            app.rectangleLength.ValueChangedFcn = createCallbackFcn(app, @rectangleLengthValueChanged, true);
            app.rectangleLength.Position = [170 292 150 3];

            % Create RadiusLabel_7
            app.RadiusLabel_7 = uilabel(app.Rectangle);
            app.RadiusLabel_7.HorizontalAlignment = 'right';
            app.RadiusLabel_7.Position = [111 206 36 22];
            app.RadiusLabel_7.Text = 'Width';

            % Create rectangleWidth
            app.rectangleWidth = uislider(app.Rectangle);
            app.rectangleWidth.ValueChangedFcn = createCallbackFcn(app, @rectangleWidthValueChanged, true);
            app.rectangleWidth.Position = [168 215 150 3];

            % Create createRectangle
            app.createRectangle = uibutton(app.Rectangle, 'push');
            app.createRectangle.ButtonPushedFcn = createCallbackFcn(app, @createRectangleButtonPushed, true);
            app.createRectangle.Position = [170 100 100 23];
            app.createRectangle.Text = 'Create shape!';

            % Create Square
            app.Square = uitab(app.TabGroup);
            app.Square.Title = 'Square';

            % Create ColorPicker_3Label
            app.ColorPicker_3Label = uilabel(app.Square);
            app.ColorPicker_3Label.HorizontalAlignment = 'right';
            app.ColorPicker_3Label.Position = [160 346 70 22];
            app.ColorPicker_3Label.Text = 'Color Picker';

            % Create squareColor
            app.squareColor = uicolorpicker(app.Square);
            app.squareColor.ValueChangedFcn = createCallbackFcn(app, @squareColorValueChanged, true);
            app.squareColor.Position = [245 346 38 22];

            % Create RadiusLabel_3
            app.RadiusLabel_3 = uilabel(app.Square);
            app.RadiusLabel_3.HorizontalAlignment = 'right';
            app.RadiusLabel_3.Position = [80 283 69 22];
            app.RadiusLabel_3.Text = 'Side Length';

            % Create squareSideLength
            app.squareSideLength = uislider(app.Square);
            app.squareSideLength.ValueChangedFcn = createCallbackFcn(app, @squareSideLengthValueChanged, true);
            app.squareSideLength.Position = [170 292 150 3];

            % Create createSquare
            app.createSquare = uibutton(app.Square, 'push');
            app.createSquare.ButtonPushedFcn = createCallbackFcn(app, @createSquareButtonPushed, true);
            app.createSquare.Position = [170 100 100 23];
            app.createSquare.Text = 'Create shape!';

            % Create Triangle
            app.Triangle = uitab(app.TabGroup);
            app.Triangle.Title = 'Triangle';

            % Create ColorPicker_2Label
            app.ColorPicker_2Label = uilabel(app.Triangle);
            app.ColorPicker_2Label.HorizontalAlignment = 'right';
            app.ColorPicker_2Label.Position = [160 346 70 22];
            app.ColorPicker_2Label.Text = 'Color Picker';

            % Create triangleColor
            app.triangleColor = uicolorpicker(app.Triangle);
            app.triangleColor.ValueChangedFcn = createCallbackFcn(app, @triangleColorValueChanged, true);
            app.triangleColor.Position = [245 346 38 22];

            % Create RadiusLabel_4
            app.RadiusLabel_4 = uilabel(app.Triangle);
            app.RadiusLabel_4.HorizontalAlignment = 'right';
            app.RadiusLabel_4.Position = [117 283 32 22];
            app.RadiusLabel_4.Text = 'Base';

            % Create triangleBase
            app.triangleBase = uislider(app.Triangle);
            app.triangleBase.ValueChangedFcn = createCallbackFcn(app, @triangleBaseValueChanged, true);
            app.triangleBase.Position = [170 292 150 3];

            % Create RadiusLabel_6
            app.RadiusLabel_6 = uilabel(app.Triangle);
            app.RadiusLabel_6.HorizontalAlignment = 'right';
            app.RadiusLabel_6.Position = [107 206 40 22];
            app.RadiusLabel_6.Text = 'Height';

            % Create triangleHeight
            app.triangleHeight = uislider(app.Triangle);
            app.triangleHeight.ValueChangedFcn = createCallbackFcn(app, @triangleHeightValueChanged, true);
            app.triangleHeight.Position = [168 215 150 3];

            % Create createTriangle
            app.createTriangle = uibutton(app.Triangle, 'push');
            app.createTriangle.ButtonPushedFcn = createCallbackFcn(app, @createTriangleButtonPushed, true);
            app.createTriangle.Position = [170 100 100 23];
            app.createTriangle.Text = 'Create shape!';

            % Create EquilateralTriangle
            app.EquilateralTriangle = uitab(app.TabGroup);
            app.EquilateralTriangle.Title = 'Equilateral Triangle';

            % Create ColorPickerLabel
            app.ColorPickerLabel = uilabel(app.EquilateralTriangle);
            app.ColorPickerLabel.HorizontalAlignment = 'right';
            app.ColorPickerLabel.Position = [160 346 70 22];
            app.ColorPickerLabel.Text = 'Color Picker';

            % Create equilateralColor
            app.equilateralColor = uicolorpicker(app.EquilateralTriangle);
            app.equilateralColor.ValueChangedFcn = createCallbackFcn(app, @equilateralColorValueChanged, true);
            app.equilateralColor.Position = [245 346 38 22];

            % Create RadiusLabel_5
            app.RadiusLabel_5 = uilabel(app.EquilateralTriangle);
            app.RadiusLabel_5.HorizontalAlignment = 'right';
            app.RadiusLabel_5.Position = [80 283 69 22];
            app.RadiusLabel_5.Text = 'Side Length';

            % Create equilateralSideLength
            app.equilateralSideLength = uislider(app.EquilateralTriangle);
            app.equilateralSideLength.ValueChangedFcn = createCallbackFcn(app, @equilateralSideLengthValueChanged, true);
            app.equilateralSideLength.Position = [170 292 150 3];

            % Create createEquilateral
            app.createEquilateral = uibutton(app.EquilateralTriangle, 'push');
            app.createEquilateral.ButtonPushedFcn = createCallbackFcn(app, @createEquilateralButtonPushed, true);
            app.createEquilateral.Position = [170 100 100 23];
            app.createEquilateral.Text = 'Create shape!';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = ShapesAppDesignV2

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