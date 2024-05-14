classdef Square < Rectangle
    properties
        SideLength
    end
    
    methods
        function obj = Square(sideLength, color)
            % Call the parent constructor Rectangle
            obj = obj@Rectangle(sideLength, sideLength, color);
            obj.SideLength = sideLength;
        end

        function Display(obj)
            fprintf(['The area of a %s square with a side length of %.2f units is ' ...
                'approximately %.2f square units.\n'], ...
                obj.ColorMixinObj.GetColor(), obj.SideLength, obj.Area);
        end
     
        function Draw(obj) 
            % Opens the figure in a new window
            figure; 
            rectangle('Position',[0 0 obj.SideLength obj.SideLength], 'FaceColor', obj.ColorMixinObj.color);
            % Sets axis limits
            axis equal;
            xlim([-1, obj.SideLength + 1]);
            ylim([-1, obj.SideLength + 1]);
            % Sets title
            title({'Square', ['Side Lengths: ' num2str(obj.SideLength, '%.2f') ...
                '     Area: ' num2str(obj.Area, '%.2f') ' units^2']});
        end
    end
end

%            title({'Square', ['Side Lengths: ' num2str(obj.SideLength, '%.2f') ...
%                '     Area: ' num2str(obj.Area, '%.2f') ' units^2' '     Color: ' obj.ColorMixinObj.color]});