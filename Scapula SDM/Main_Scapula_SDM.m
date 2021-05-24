% Developed by Pendar Soltanmohammadi, Western University, London, ON, Canada
% This program takes modes of variation as input and returns the mean geometry mapped with the resulting density distribution. 
clc;
clear
close all;
global coeff Ave SD
load 'Data_Density_Scapula.mat'
Scapula_SDM_App()