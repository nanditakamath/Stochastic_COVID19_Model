% Deterministic Epidemic Theorem
% ------------------------------------
% The variables used are -
% p -- Probability of major outbreak
% R0 -- basic reproduction number
% ------------------------------------

function p = P_majOutBr()

    global beta gamma i
    p=0;
    R0=beta/gamma;
    
    if R0>1             %derivation of condition from branching process assumption
        p=1-(1/R0)^i;
    end

end
