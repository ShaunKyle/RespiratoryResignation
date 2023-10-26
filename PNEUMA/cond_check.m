function [sys,x0,str,ts] = cond_check(t,x,u,flag,TImean,TTmean,first_time,resp_offset,block_time,time_step)

switch flag,

  case 0,
    [sys,x0,str,ts]=mdlInitializeSizes;
  case 1,
    sys=mdlDerivatives(t,x,u);
  case 2,
    sys=mdlUpdate(t,x,u,TImean,TTmean,first_time, resp_offset,block_time,time_step);
  case 3,
    sys=mdlOutputs(t,x,u);
  case 4,
    sys=mdlGetTimeOfNextVarHit(t,x,u);
  case 9,
    sys=mdlTerminate(t,x,u);
  otherwise
    error(['Unhandled flag = ',num2str(flag)]);
end

function [sys,x0,str,ts]=mdlInitializeSizes

sizes = simsizes;

sizes.NumContStates  = 0;
sizes.NumDiscStates  = 3;
sizes.NumOutputs     = 1;
sizes.NumInputs      = 1;
sizes.DirFeedthrough = 0;
sizes.NumSampleTimes = 1;   % at least one sample time is needed

sys = simsizes(sizes);
x0  = [0 0 0];
str = [];
ts  = [0 0];


function sys=mdlDerivatives(t,x,u)

sys = [];

function sys=mdlUpdate(t,x,u,TImean,TTmean,first_time,resp_offset,block_time,time_step)

if ((t == 0)&(first_time == 0))
   currenttime = TTmean - rem(block_time-resp_offset,TTmean)+2*time_step;
else
   currenttime=t-x(1)+x(2);
end
%currenttime


if (currenttime >= TTmean)
   currenttime = 0;
end


%when upper airway opened up again after ventilation reached the threshold, 
%it could be still during expiration.  Therefore, the state change will have shift
%to awake and the airway will start to obstruct again.  To avoid that, the
%airway will start to decrease on the next inspiration on-set except during the
%current expiration period.
%also, the obstruction will only occur at the on-set of inspiration, not during
%the inspiration period.

if ((currenttime > TImean) & (currenttime < TTmean))
   sys = [t currenttime 0];
else
   sys = [t currenttime 1];
end

%sys=[t currenttime u];

function sys=mdlOutputs(t,x,u,TImean,TTmean)

sys = x(3);

function sys=mdlGetTimeOfNextVarHit(t,x,u)

sampleTime = 1;    %  Example, set the next hit to be one second later.
sys = t + sampleTime;

function sys=mdlTerminate(t,x,u)

sys = [];

