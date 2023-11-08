%% Plot all patient lung functions
tiledlayout(5,2);
for n=1:10
    nexttile
    plotPatientLungFunction(n);
end

%% Derivative of lung function
% Might be useful to know how fast the patient's lung function deteriorates
dt = LungFunction(3,1) - LungFunction(2,1); %Assume uniform timestep
derivL = gradient(LungFunction(:,2), dt);

%% Helper functions
function plotPatientLungFunction(patientNumber)
    path = "PNEUMA/Patient Lung Functions/Patient" + num2str(patientNumber) + ".mat";
    clear LungFunction
    load(path)
    plot(LungFunction(:,1), LungFunction(:,2));
    title("Patient " + num2str(patientNumber))
    ylabel("Lung function")
    xlabel("Time [s]")
    ylim([0, 1])
end