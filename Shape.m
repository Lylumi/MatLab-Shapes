classdef Shape < matlab.mixin.Heterogeneous
   properties
       Name
       Area
   end
  
   methods
       % Constructor that takes the name as an input argument
       function obj = Shape(name)
           if nargin > 0
               obj.Name = name;
           end
       end
       
       % Display method to display the shape's properties
       function Display(obj)
           disp(['Shape Name: ' obj.Name]);
           disp(['Area: ' obj.Area]);
       end
   end

   methods (Static) 
       % Method for calculating the statistics of a shape's area 
       function CalculateStatistics(shapesArray) 
           
           if isempty(shapesArray)
               % Error handling for an empty array
               error('The array of shapes is empty.');
           end

           % Ensures that the array contains Shape objects and has a non-empty Area for each
           if all(arrayfun(@(s) isa(s, 'Shape') && ~isempty(s.Area), shapesArray))
               areas = [shapesArray.Area];
               meanArea = mean(areas);
               medianArea = median(areas);
               stdArea = std(areas);
   
               disp(['Mean Area: ', num2str(meanArea)]);   
               disp(['Median Area: ', num2str(medianArea)]);
               disp(['Standard Deviation of Areas: ', num2str(stdArea)]);

           else
               % Error handling for the array if it contains invalid dimensions
               error('All items in the array must be Shape objects with a defined area.');
           end
       end
   end
end