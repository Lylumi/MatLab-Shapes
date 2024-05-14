classdef Circle < Shape
   properties
       Radius
       ColorMixinObj
   end

   methods
       function obj = Circle(radius, color)
           % Call the parent constructor Shape
           obj = obj@Shape('Circle');
           obj.Radius = radius;
           % Calculates and assign the area
           obj = obj.CalculateArea();
           % Add color to model
           obj.ColorMixinObj = ColorMixin(color);
       end

       function obj = CalculateArea(obj)
           % Calculates the area of a circle
           obj.Area = pi * obj.Radius^2;
       end

       function Display(obj)
           % Displays information pertaining to a circle
           fprintf(['The area of a %s circle with a radius of %.2f units is ' ...
               'approximately %.2f square units.\n'], ...
               obj.ColorMixinObj.GetColor(), obj.Radius, obj.Area);
       end

       function Draw(obj)
           % Opens the figure in a new window
           figure;
           hold on;
           % Draws the filled circle
           rectangle('Position', [-obj.Radius, -obj.Radius, 2*obj.Radius, 2*obj.Radius], ...
           'Curvature', [1, 1], 'FaceColor', obj.ColorMixinObj.color, 'EdgeColor', 'none');
           % Equal scaling for both axes to ensure the circle model isn't skewed
           axis equal;
           title({'Circle', ['Radius: ' num2str(obj.Radius, '%.2f') '     Area: ' num2str(obj.Area, ...
               '%.2f') ' units^2']});
           hold off;
       end
   end
end

% title({'Circle', ['Radius: ' num2str(obj.Radius, '%.2f') '     Area: ' num2str(obj.Area, ...
%               '%.2f') ' units^2' '     Color: ' obj.ColorMixinObj.color]});