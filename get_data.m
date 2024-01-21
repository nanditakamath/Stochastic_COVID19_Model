% Setting up the data
% ------------------------------------
% The variables used are -
% S -- Susceptible population
% I -- Infected population
% R -- Removed population
% ------------------------------------

function []=get_data()

    global S I R date
    global N

    T=readtable('date-India-confirmed-recovered-dead.csv');
    N=136641750;
    
    date=string(T.Date);
    R=T.r+T.d;
    I=T.c-T.r-T.d;
    S=N-T.c;

end