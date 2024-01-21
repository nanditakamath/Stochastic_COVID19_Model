% Function used for optimization and finding the solution for beta and gamma
% ------------------------------------
% The variables are - 
% m -- Time-span
% sol -- Solution of ODE
% f -- Mean squared error
% ------------------------------------
% The functions used are-
% ode45 -- Non-stiff ODE solver
% odefunc -- Sets SIR Model
% norm -- Normalizing function
% ------------------------------------

function f = optim_fun(params)  

    global S I x y
    
    m=y-x+1;
    
    %solve ODE
    try
        warning('off')
    [tsol,sol] = ode45(@(t,y) odefunc(t,y,params(1),params(2)),0:m-1, [S(x),I(x)]);
        warning('on')
    catch
        f=NaN;
        warning('on')
        return
    end     
    
    %calculate optimization function
    f =  (norm((S(x:y) - sol(:,1))) + norm((I(x:y) - sol(:,2))))/m;
    
end