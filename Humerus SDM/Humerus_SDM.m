% Developed by Pendar Soltanmohammadi, Western University, London, ON, Canada
% This program takes modes of variation as input and returns the mean geometry mapped with the resulting density distribution. 
function Humerus_SDM(input)

load 'Data_Density_Humerus.mat'
load 'PC_Sign_Humerus_Density.mat'

%input vector (modes of variation) should be described by perturbing the mean denisty distribution by +/- desired standard deviations (e.g. +1 standard deviation) for each of the first 10 (significant) principal components (PCs).

[coeff,score,~,~,~,~] = pca(data_matrix);

score_input = zeros(size(input));
for i=1:length(input)
    
 score_input(i) = input(i)*pc_sign_humerus_density(i)*std(score(:,i));   
    
end

Write_VTK_Density('Average_Mesh_Humerus.vtk', 'Humerus_SDM_Output.vtk', (score_input*coeff(:,1:length(input))'+mean(data_matrix)),'Density');
