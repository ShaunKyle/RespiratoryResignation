function LungFunction = getPneumonia(FileName,Severity,Rstart,Rresolve,Simtime)
% Generates a pneumonia signal
    t=linspace(0,0.25*Simtime,250);
    LungFunction=0.75*exp(-t*Rstart)+Severity;
    t2=linspace(0.25*Simtime+1,Simtime,750);
    LF1=LungFunction(end);
    LF2=0.5;
    A=(LF1-LF2)/(1-exp(Rresolve*(t2(end)-t2(1))));
    B=LungFunction(end)-A;
    LungFunction2=A.*exp(Rresolve.*(t2-t2(1)))+B;
    LungFunction=[LungFunction LungFunction2];
    t=[t t2];
    % at chaos
    s=spline(linspace(0,Simtime,50),rand(1,50)*0.05,t);
    LungFunction=LungFunction+s;
    plot(t,LungFunction);
    LungFunction=[t',LungFunction'];
    save(FileName,'LungFunction');
end

