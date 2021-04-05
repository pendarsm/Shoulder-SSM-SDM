% Developed by Pendar Soltanmohammadi, Western University, London, ON, Canada
% This program takes modes of variation as input and returns the mean geometry mapped with the resulting density distribution. 
function Scapula_SDM(input)

load 'Data_Density_Scapula.mat'
load 'PC_Sign_Scapula_Density.mat'

[coeff,score,~,~,~,~] = pca(data_matrix);

score_input = zeros(size(input));
for i=1:length(input)
    
 score_input(i) = input(i)*pc_sign_scapula_density(i)*std(score(:,i));   
    
end

Write_VTK_Density('Average_Mesh_Scapula.vtk', 'Scapula_SDM_Output.vtk', (score_input*coeff(:,1:length(input))'+mean(data_matrix)),'Density');

end