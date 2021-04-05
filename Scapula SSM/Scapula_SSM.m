% Developed by Pendar Soltanmohammadi, Western University, London, ON, Canada
% This program takes modes of variation as input and returns the resulting geometry. 
function Scapula_SSM(input)

load 'Data_Shape_Scapula.mat'
load 'PC_Sign_Scapula_Shape.mat'
load 'Elements.mat'

[coeff,score,~,~,~,~] = pca(data_matrix);

score_input = zeros(size(input));
for i=1:length(input)
    
 score_input(i) = input(i)*pc_sign_scapula_shape(i)*std(score(:,i));   
    
end

nodes = reshape((score_input*coeff(:,1:length(input))'+mean(data_matrix)), 3, []);
Write_VTK_Shape('Scapula_SSM_Output.vtk', nodes, elements);

end