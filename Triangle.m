classdef Triangle < Shape
    properties
        Base
        Height
        ColorMixinObj
    end

    methods
        function obj = Triangle(base, height, color)
            % Call the parent constructor Shape
            obj = obj@Shape('Triangle');
            obj.Base = base;
            obj.Height = height;
            % Calculates and assign the area
            obj = obj.CalculateArea();
            % Add color to model
            obj.ColorMixinObj = ColorMixin(color);
        end

        function obj = CalculateArea(obj)
            % Calculates the area of a triangle
            obj.Area = 0.5 * obj.Base * obj.Height;
        end

         function Display(obj)
           fprintf(['The area of a %s triangle with a base of %.2f units and a height ' ...
               'of %.2f units is approximately %.2f square units.\n'], ...
               obj.ColorMixinObj.GetColor(), obj.Base, obj.Height, obj.Area);
         end

         function Draw(obj)
             % Opens the figure in a new window
             figure;
             % Triangle vertices
             % Vertex at the base - left
             x1 = -obj.Base/2; y1 = 0;
             % Vertex at the base - right
             x2 = obj.Base/2;  y2 = 0;
             % Vertex at the top
             x3 = 0; y3 = obj.Height;
             % Draws and colors the triangle
             fill([x1 x2 x3], [y1 y2 y3], obj.ColorMixinObj.color);
             hold on;
             % Sets axis limits
             axis equal;
             xlim([-obj.Base, obj.Base]);
             ylim([0, obj.Height*1.2]);
             % Sets title
             title({'Triangle', ['Base: ' num2str(obj.Base, '%.2f') '     Height: ' num2str(obj.Height, '%.2f') ...
                 '     Area: ' num2str(obj.Area, '%.2f') ' units^2']});
             hold off;
         end
    end
end

%             title({'Triangle', ['Base: ' num2str(obj.Base, '%.2f') '     Height: ' num2str(obj.Height, '%.2f') ...
%                 '     Area: ' num2str(obj.Area, '%.2f') ' units^2' '     Color: ' obj.ColorMixinObj.color]});