function SaveSimulationSystem(folder,datafilename,variables,units)
%% saves a simulation system in its own subdirectory as a cell array of timeseries objects
% folder is the name of the folder to save the simulation data
% datafilename is the prefix of the datafile name i.e. 'AutonomicCtrl'
% variables are the names of the variables stored in datafilename as a
% string array
% units are stored as a string array
    ts=cell(length(variables),1);
    for i=1:10
        x=load([datafilename,num2str(i),'.mat']);
        s=fieldnames(x);
        x=x.(s{1});

        if ~isempty(x)
            x=x';
            t=x(:,1);
            for j=1:length(variables)
                if i==1
                   ts{j}=timeseries(x(:,j+1),t); 
                else
                    ts{j}=append(ts{j},timeseries(x(:,j+1),t));
                end
            end
        end
    end
    for j=1:length(variables)
        ts{j}.DataInfo.Units=units{j};
        ts{j}.Name=variables{j};
    end
    mkdir(folder);
    save([cd '/' folder '/' datafilename '.mat'],'ts','-v7.3'); % no size limit!
end

