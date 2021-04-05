function Write_VTK_Shape(output_file, nodes, polys) 
%this function gets nodes' coordinates (3 by n) and cells' connectivity (3 by m)


fid = fopen(output_file,'w');

tmp_str=['# vtk DataFile Version 4.2'];
fprintf(fid,'%s\n',tmp_str); 
tmp_str=['vtk output'];
fprintf(fid,'%s\n',tmp_str);
tmp_str=['ASCII'];
fprintf(fid,'%s\n',tmp_str);
tmp_str=['DATASET POLYDATA'];
fprintf(fid,'%s\n',tmp_str);

tmp_str=['POINTS ' num2str(size(nodes,2)) ' float']; 
fprintf(fid,'%s\n',tmp_str);

fprintf(fid,'%f %f %f %f %f %f %f %f %f\n',nodes); 

if rem(size(nodes,2)*3,9)>0 
    fprintf(fid,'\n');
end


tmp_str=['POLYGONS ' num2str(length(polys)) ' ' num2str(length(polys)*4)];
fprintf(fid,'%s\n',tmp_str);

threes=ones(1,length(polys))*3; 
temp=[threes; polys]; 
fprintf(fid,'%i %i %i %i\n',temp);


fclose(fid);