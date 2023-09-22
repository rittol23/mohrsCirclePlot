% --------make an input dialogue box to enter the values
CoordnatePrompt = {" x-face Sigma (x):" , "x-face Tau(y)", " y-face Sigma(x):", "y-face Tau(y):"};
dlgtitle = "Input";
dims = [1 40];
inputCoordinate = str2double(inputdlg(CoordnatePrompt, dlgtitle, dims ));


%--------- plot the point of the faces and reverse the y axis (tau pos opp)
xFaceSigma = inputCoordinate(1);
xFaceTau = inputCoordinate(2);
yFaceSigma = inputCoordinate(3);
yFaceTau = inputCoordinate(4);

% xFaceSigma = 45;
% xFaceTau = 30;
% yFaceSigma = -60;
% yFaceTau = -30;

ttlX = abs(xFaceSigma) + abs(yFaceSigma)
ttlY = abs(xFaceTau) + abs(yFaceTau)
ttlHyptenuse = sqrt(ttlY^2 + ttlX^2)
radius = ttlHyptenuse/2

centerX = (xFaceSigma + yFaceSigma)/2
centerY = (xFaceTau + yFaceTau)/2

%phi2Principle = 

plot(xFaceSigma,xFaceTau, 'rd');
hold on;
plot(yFaceSigma,yFaceTau, 'rd');
hold on;
plot([xFaceSigma, yFaceSigma], [xFaceTau, yFaceTau], 'b--')
% the reversal
set(gca, 'YDir', 'reverse');


% pythag to find the center and the radius


plot(centerX,centerY, 'ro')
hold on;
plot(centerX + radius, centerY, 'bd')
hold on;
plot(centerX, centerY + radius, 'bd')
hold on;
plot(centerX - radius, centerY, 'kd')
hold on;
plot(centerX, centerY - radius, 'kd')
hold on;
plotCircle (centerX, centerY, radius);


grid on;
%axis auto;
%axis on;
%axis equal;
axis square;
%box on;