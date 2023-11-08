% datafile = [pwd '/simdata/LungsOnly/LungFunction20/CONTROLLER'];
datafile = [pwd '/simdata/Patient9/NoIntervention/CONTROLLER'];

LungFunction = LoadPatient(9);
% LungFunction = [0,0.5];

% Had to fix the timescale for this
PlotPhysiologicalMeasurements(datafile,LungFunction);
