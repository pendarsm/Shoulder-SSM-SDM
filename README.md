# Shoulder-SSM-SDM

Statistical Shape Models (SSMs) and Statistical Density Models (SDMs) of the Shoulder Bones Based upon 75 CT Images

This repository hosts my MATLAB source code of the SSMs and SDMs of the humerus and scapula bones. In order to use the SSMs & SDMs you will also need to download
the corresponding .mat and .vtk files from my SimTK repository at: https://simtk.org/projects/shoulder-ssdm

Please run the main file to use the corresponding model. The SSM will create a surface model whose shape is sensitive to the normalized PC scores chosen.
The SDM will apply node-by-node HU values to a 3D template volumetric mesh (from the average geometry), allowing you to visualize the bone density distribution
which is sensitive to the normalized PC scores chosen. The output files can be visualized using open-source software like ParaView (www.paraview.org).

For more information about the development of our SSMs and SDMs please refer to our paper:
https://asmedigitalcollection.asme.org/biomechanical/article-abstract/142/12/121005/1084901

Pendar Soltanmohammadi, Western University, London, ON, Canada
