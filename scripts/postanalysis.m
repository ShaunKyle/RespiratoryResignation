% datafile = [pwd '/simdata/LungsOnly/LungFunction20/CONTROLLER'];
patientNo = 9;

datafile = [pwd '/simdata/Patient' num2str(patientNo) '/Ventilator1/CONTROLLER'];

LungFunction = LoadPatient(patientNo);
% LungFunction = [0,0.5];

% Had to fix the timescale for this
PlotPhysiologicalMeasurements(datafile,LungFunction);
