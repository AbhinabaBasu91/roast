function coord = drawLine(p0,direction,len,density,isPlot)
% coord = drawLine(p0,direction,len,density,isPlot)

if nargin < 5
    isPlot = 0;
end

% direction = (p1 - p0)/norm(p1 - p0); % directional vector

samp = len * density; % how many samples along the line

coord = zeros(samp+1,3);

for j = 1:size(coord,1)
    coord(j,:) = p0 + 1/density * direction * (j-1);
end
% calculate the coordinates of the points that make up the line

coord = unique(coord,'rows'); % clean-up of the coordinates

if isPlot
    figure; plot3(coord(:,1),coord(:,2),coord(:,3),'r.');
end
