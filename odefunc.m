% Setting the SIR model
% ------------------------------------
% The variables used are - 
% t -- Time-steps
% y -- [S;I]
% dy -- [dS;dI]
% ------------------------------------

function dy = odefunc(t,var,beta,gamma)

global N

dy=zeros(2,1);

dy(1)=-(beta/N)*var(1)*var(2);                %dS=-(beta/N)*s*i
dy(2)=(beta/N)*var(1)*var(2)-gamma*var(2);    %dI=(beta/N)*s*i-gamma*i

end