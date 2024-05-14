classdef Rectangle < Shape
    properties
        Length
        Width
        ColorMixinObj
    end

    methods
        function obj = Rectangle(length, width, color)
            % Call the parent constructor Shape
            obj = obj@Shape('Rectangle');
            obj.Length = length;
            obj.Width = width;
            % Calculates and assign the area
            obj = obj.CalculateArea();
            % Add color to model
            obj.ColorMixinObj = ColorMixin(color);
        end

        function obj = CalculateArea(obj)
            % Calculates the area of a rectangle
            obj.Area = obj.Length * obj.Width;
        end

        function Display(obj)
           fprintf(['The area of a %s rectangle with a length of %.2f units and a ' ...
               'width of %.2f units is %.2f square units.\n'], ...
               obj.ColorMixinObj.GetColor(), obj.Length, obj.Width, obj.Area);
        end

        function Draw(obj)
            % Opens the figure in a new window
            figure;
            rectangle('Position',[0 0 obj.Length obj.Width], 'FaceColor', obj.ColorMixinObj.color);
            % Sets axis limits
            axis equal;
            xlim([-1, obj.Length + 1]);
            ylim([-1, obj.Width + 1]);
            % Sets title
            title({'Rectangle',  ['Length: ' num2str(obj.Length, '%.2f') '     Width: ' num2str(obj.Width, ...
                '%.2f') '     Area: ' num2str(obj.Area, '%.2f') ' units^2']});
        end
    end
end

%             title({'Rectangle',  ['Length: ' num2str(obj.Length, '%.2f') '     Width: ' num2str(obj.Width, ...
%                '%.2f') '     Area: ' num2str(obj.Area, '%.2f') ' units^2' '     Color: ' obj.ColorMixinObj.color]});