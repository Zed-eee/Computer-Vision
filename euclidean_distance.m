A = zeros(100, 100); % Create a 100x100 black matrix
Cx = 50; % X-coordinate of the circle's center
Cy = 50; % Y-coordinate of the circle's center
radius = 20; % Radius of the circle

% Create a 2D grid of coordinates
[x, y] = meshgrid(1:size(A, 2), 1:size(A, 1));

% Calculate the Euclidean distance from the center for each point
distance = sqrt((x - Cx).^2 + (y - Cy).^2);

% Create a mask for the circle
circleMask = distance <= radius;

% Set the pixels within the circle to white (value 1)
A(circleMask) = 1;

% Display the matrix as an image
imshow(A, []);
title('Black Matrix with White Circle');
