function Write_VTK_Density(input_file_name, output_file_name, densities,varname) 
%this function gets mesh information and a row vector containing
%corresponding densities

copyfile(input_file_name,output_file_name,'f')

fidw=fopen(output_file_name,'a');

tmp_str = ['POINT_DATA ' num2str(size(densities,2))];     
fprintf(fidw,'%s\n',tmp_str);
tmp_str=['SCALARS ' varname ' float'];
fprintf(fidw,'%s\n',tmp_str);
tmp_str='LOOKUP_TABLE default';
fprintf(fidw,'%s\n',tmp_str);

fprintf(fidw,'%f %f %f %f %f %f %f %f %f\n',densities);
if rem(size(densities,2)*3,9)>0 
    fprintf(fidw,'\n');
end

fclose(fidw);
end
