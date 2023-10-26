function LungFunction=LoadPatient(patientNumber)
%% LOADPATIENT Loads lung function for specified patient
% patientNumber is between 1 to 10
FileName=[cd '/PNEUMA/Patient Lung Functions/Patient' num2str(patientNumber) '.mat'];
load(FileName, 'LungFunction');
end
