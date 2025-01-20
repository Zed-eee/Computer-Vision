% Create a 100x100 black matrix
A = zeros(100, 100); 

% Define the circle center and radius
Cx = 50; % X-coordinate of the circle's center
Cy = 50; % Y-coordinate of the circle's center
radius = 20; % Radius of the circle

% Create a 2D grid of coordinates
[x, y] = meshgrid(1:size(A, 2), 1:size(A, 1));

% Calculate the Manhattan Distance (D4)
distance = abs(x - Cx) + abs(y - Cy);

% Create a mask for the "circle" using Manhattan Distance
circleMask = distance <= radius;

% Set the pixels within the circle to white (value 1)
A(circleMask) = 1;

% Display the matrix as an image
imshow(A, []);
title('Black Matrix with D4 (Manhattan) Distance Circle');
