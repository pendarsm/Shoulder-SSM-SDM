% Developed by Pendar Soltanmohammadi, Western University, London, ON, Canada
% This program takes modes of variation as input and returns the mean geometry mapped with the resulting density distribution. 
function Scapula_SDM(input)
global SD coeff Ave

%input vector (modes of variation) should be described by perturbing the mean denisty distribution by +/- desired standard deviations (e.g. +1 standard deviation) for each of the first 17 (significant) principal components (PCs).
score_input = input .* SD(1,1:length(input));  

Write_VTK_Density('Average_Mesh_Scapula.vtk', 'Scapula_SDM_Output.vtk', (score_input * coeff(:,1:length(input))' + Ave),'Density');

end