% Script hideAndSeek
% Seeker looks through a window to spot a target hiding behind a wall.

% Set up the figure
close all         % Close all previous figure windows
figure            % Start a new figure window
hold on           % Keep the same set of axes (multiple plots on same axes)
axis equal        % unit lengths on x- and y-axis are equal
axis([-1 1 -1 1]) % x-axis limits [-1,1], y-axis limits [-1,1]

% Extent of window in wall
windowTop = 1/3;
windowBottom = -1/4;

% Draw the wall
plot([0 0], [windowTop, 1], 'k-')
plot([0 0], [windowBottom, -1], 'k-')

%%% Do not change the code above %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Modify the code below %%%%%%%%%%

% Target
xTarget = rand();                      %(1)change the fixd location of the target  
r = -1 + (1- (-1)).*rand([1 1])        %(1)randomly generate coordinate within the area
yTarget = r;
plot(xTarget, yTarget, 'r+')           % format Red cross

% User-clicked point
title('Click to the left of the window')
[xSeeker, ySeeker] = ginput(1);
line([xSeeker 0],[ySeeker 0.33333],'Color','b','LineStyle','--');     
line([xSeeker 0],[ySeeker -0.25], 'Color','b','LineStyle','--'); 
m1 = (0.33333-ySeeker)/(0-xSeeker);                    % extend the line
m2 = (-0.25-ySeeker)/(0-xSeeker);
y1 = m1*1+0.33333;
y2 = m2*1-0.25;
hold on;
line([0 1],[0.33333, y1],'Color','r','LineStyle','--');     
line([0 1],[-0.25, y2], 'Color','r','LineStyle','--'); 

                                      
plot(xSeeker, ySeeker, 'b*');          % format Blue asterisk
if xSeeker > 0                         % (2)
    messageToShow1 = sprintf('Cheater!');
    title(messageToShow1)
else
    if xTarget > (yTarget-0.33333)/m1
        if yTarget < 1  && yTarget > m2*xTarget-0.25
            messageToShow2=sprintf('You found me at (%.1f,%.1f)', xTarget, yTarget);
            title(messageToShow2);   
        elseif  yTarget >-1 && yTarget < m1*xTarget+0.33333 && yTarget >  m2*xTarget-0.25
            messageToShow3=sprintf('You found me at (%.1f,%.1f)', xTarget, yTarget);
            title(messageToShow3); 
        else 
            messageToShow4=sprintf('Still hiding');
            title(messageToShow4);
        end 
    elseif xTarget ==  (yTarget-0.33333)/m1   
        if yTarget < m1*xTarget+0.33333 && yTarget > m2*xTarget-0.25
            messageToShow5=sprintf('You found me at (%.1f,%.1f)', xTarget, yTarget);
            title(messageToShow5);   
        else 
            messageToShow6=sprintf('Still hiding');
            title(messageToShow6);
        end 
    else  
        if yTarget < m1*xTarget+0.33333 && yTarget > m2*xTarget-0.25
            messageToShow7=sprintf('You found me at (%.1f,%.1f)', xTarget, yTarget);
            title(messageToShow7);   
        else 
            messageToShow8=sprintf('Still hiding');
            title(messageToShow8);
        end
    end 
end

clc
clear


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Do not change the code below %%%

hold off