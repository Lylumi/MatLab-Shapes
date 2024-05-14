classdef ColorMixin
    properties
        color
    end
    
    methods
        % Initializes the color property 
        function obj = ColorMixin(color)
            if nargin > 0
                obj.color = color;
            end
        end
        
        % Method that acts as assessor
        function color = GetColor(obj)
            color = obj.color;
        end
        
        % Method that acts as mutator
        function obj = SetColor(obj, color)
            obj.color = color;
        end
    end
end