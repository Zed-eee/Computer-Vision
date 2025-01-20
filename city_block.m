% Create a 100x100 matrix (initially black)
A = zeros(100, 100); 

% Define the circle center and radius
Cx = 50; % X-coordinate of the circle's center
Cy = 50; % Y-coordinate of the circle's center
radius = 20; % Radius of the circle

% Create a 2D grid of coordinates
[x, y] = meshgrid(1:size(A, 2), 1:size(A, 1));

% Calculate the City Block Distance (Manhattan Distance)
distance = abs(x - Cx) + abs(y - Cy);

% Normalize the distance to create grayscale intensities
% Values closer to the center (distance = 0) will have higher intensity (white),
% and values near the radius limit will have lower intensity.
A = max(0, 1 - distance / radius); % Normalize and clip values to [0, 1]

% Display the matrix as a grayscale image
imshow(A, []);
title('Grayscale Matrix with City Block Distance');
