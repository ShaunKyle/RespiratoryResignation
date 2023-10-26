datafile = [pwd '/simdata/TestSim/CONTROLLER'];
LungFunction = LoadPatient(1);

% Had to fix the timescale for this
PlotPhysiologicalMeasurements(datafile,LungFunction);
