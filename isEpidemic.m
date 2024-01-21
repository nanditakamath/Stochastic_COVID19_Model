% Deterministic Epidemic Theorem
% ------------------------------------
% The variables used are -
% flag -- Indicates epidemic status
%         0 if disease-free equilibrium and 1 if epidemic
% R0 -- basic reproduction number
% s -- Initial number of infectives
% ------------------------------------

function flag = isEpidemic()

    global N beta gamma i
    
    flag=0;
    R0=beta/gamma;
    s=N-i;

    if s*R0/N>1    %condition obtained from theorem
        flag=1;
    end

end
