function h_figure = PlotPhysiologicalMeasurements(datafile,LungFunction)
%% Plots data for simulation
% datafile (*.mat) is a string with the file name (and path if
% necessary)containing the time series cell array.
% LungFunction is a nx2 array with the lung function 1st column is time in
% seconds, second colume is lung function (0-1).
    load(datafile,'ts');
    list=cell(length(ts),1);
%   Detailed explanation goes here
    for i=1:length(ts)
        list{i}=ts{i}.Name;
    end
    [indx,tf] = listdlg('ListString',list,'SelectionMode','single',...
        'PromptString','Select variable');
    [unitselect,~] = listdlg('ListString',{'seconds' 'hours' 'days'},...
        'SelectionMode','single',...
        'PromptString','Select time units');
    if tf
        h_figure=figure('Name',list{indx});
        x1=ts{indx}.Time;
        y1=ts{indx}.Data;
        x2=LungFunction(:,1);
        y2=LungFunction(:,2);
        switch(unitselect)
            case 1
                xaxistext='time (seconds)';
            case 2
                x1=x1/60/60;
                x2=x2/60/60;
                xaxistext='time (hours)';
            case 3
                x1=x1/60/60/24;
                x2=x2/60/60/24;
                xaxistext='time (days)';
        end
        % Plot physiological variable
        yyaxis left;
        plot(x1,y1);
        ylabel(list{indx});

        % Plot lung function
        yyaxis right;
        stairs(x2,y2,'-r');
        ylabel('Lung function');

        % Truncate domain to match measurement time range
        xlim([0, x1(end)]);

        xlabel(xaxistext);
        title(['Lung function versus ' list{indx}]);
        grid on;
    end
end

