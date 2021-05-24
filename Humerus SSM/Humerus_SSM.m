% Developed by Pendar Soltanmohammadi, Western University, London, ON, Canada
% This program takes modes of variation as input and returns the resulting geometry. 
function Humerus_SSM(input)
global SD coeff Ave elements

%input vector (modes of variation) should be described by perturbing the mean shape by +/- desired standard deviations (e.g. +1 standard deviation) for each of the first 5 (significant) principal components (PCs).
score_input = input .* SD(1,1:length(input));

nodes = reshape((score_input * coeff(:,1:length(input))' + Ave), 3, []);
Write_VTK_Shape('Humerus_SSM_Output.vtk', nodes, elements);
end