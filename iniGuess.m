% Initial guess for parameters
% ------------------------------------
% The variables used are -
% b0 -- initial guess for beta and gamma
% ------------------------------------
% The functions used are -
% rand -- Uniformly random generator ~ U(0,1)
% ------------------------------------

function b0 = iniGuess()

b0(1) = rand;           %random value of beta 
b0(2) = rand;           %random value of gamma

end
