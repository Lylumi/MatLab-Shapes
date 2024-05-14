% MyShapes Script
% Clears workspace, closes figures, and clears command window
clear; close all; clc;

% Prompts the user to choose a shape to create
disp('Select a shape to create: ');
disp('1. Circle');
disp('2. Rectangle');
disp('3. Triangle');
disp('4. Equilateral Triangle');
disp('5. Square');
shape_choice = input('Enter the number of the shape you want to create: ');
shape_obj = [];

% Prompt the user to input properties/dimensions to create a shape
switch shape_choice
    case 1  
        % Circle
        radius = input('Enter the radius of the circle: ');
        color = input('Enter the color of the circle: ', 's');
        shape_obj = Circle(radius, color);
    case 2  
        % Rectangle
        length = input('Enter the length of the rectangle: ');
        width = input('Enter the width of the rectangle: ');
        color = input('Enter the color of the rectangle: ', 's');
        shape_obj = Rectangle(length, width, color);   
    case 3  
        % Triangle
        base = input('Enter the base of the triangle: ');
        height = input('Enter the height of the triangle: ');
        color = input('Enter the color of the triangle: ', 's');
        shape_obj = Triangle(base, height, color);  
    case 4  
        % Equilateral Triangle
        side_length = input('Enter the side length of the equilateral triangle: ');
        color = input('Enter the color of the equilateral triangle: ', 's');
        shape_obj = EquilateralTriangle(side_length, color);
    case 5
        % Square
        side_length = input('Enter the side length of the square: ');
        color = input('Enter the color of the square: ', 's');
        shape_obj = Square(side_length, color);
    otherwise
        disp('Invalid choice.');
end

if ~isempty(shape_obj)
    % Sets the color
    shape_obj.ColorMixinObj.SetColor(color);
    % Calculates the area of the shape
    shape_obj.CalculateArea();
    % Draws the shape
    shape_obj.Draw(); 
else
    % Error handling for any issues with creating a shape
    disp('No shape was created. Please run the script again.');
end