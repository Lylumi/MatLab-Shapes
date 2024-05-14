classdef EquilateralTriangle < Triangle
    properties
        SideLength
    end
    
    methods
        function obj = EquilateralTriangle(sideLength, color)
            % Calculates the height of the equilateral triangle
            height = (sqrt(3)/2) * sideLength;
            % Call the parent constructor Triangle
            obj = obj@Triangle(sideLength, height, color);
            obj.SideLength = sideLength;
        end
        
        function Display(obj)
            fprintf(['The area of a %s equilateral triangle with a side length of %.2f ' ...
                'units is approximately %.2f square units.\n'], ...
                obj.ColorMixinObj.GetColor(), obj.SideLength, obj.Area);
        end

        function Draw(obj)
            % Opens the figure in a new window
            figure;
            % Equilateral triangle vertices
            % Bottom-left vertex
            x1 = 0; y1 = 0;
            % Bottom-right vertex
            x2 = obj.SideLength; y2 = 0;
            % Top vertex
            x3 = obj.SideLength/2; y3 = obj.Height;
            % Draws and colors the equilateral triangle
            fill([x1 x2 x3], [y1 y2 y3], obj.ColorMixinObj.color);
            hold on;
            % Sets axis limits
            axis equal;
            xlim([-1, obj.SideLength*1.2]);
            ylim([0, obj.Height*1.2]);
            % Sets title
            title({'Equilateral Triangle', ['Side Length: ', num2str(obj.SideLength, '%.2f') ...
                '     Height: ' num2str(obj.Height, '%.2f') '     Area: ' num2str(obj.Area, '%.2f') ...
                ' units^2']});
            hold off;
        end
    end
end

%            title({'Equilateral Triangle', ['Side Length: ', num2str(obj.SideLength, '%.2f') ...
%                '     Height: ' num2str(obj.Height, '%.2f') '     Area: ' num2str(obj.Area, '%.2f') ...
%                ' units^2' '     Color: ' obj.ColorMixinObj.color]});