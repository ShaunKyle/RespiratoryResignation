datafile = [pwd '/simdata/LungsOnly/LungFunction10/CONTROLLER'];
% LungFunction = LoadPatient(1);
LungFunction = [0,0.5];

% Had to fix the timescale for this
PlotPhysiologicalMeasurements(datafile,LungFunction);
