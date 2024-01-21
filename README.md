# SIR MODEL FOR EPIDEMIOLOGICAL ANALYSIS

## Introduction

The current pandemic has prompted us to analyze it with mathematical models so as to map the situation. This project was undertaken as a part of our course Applied Stochastic Processes.
We analyzed the covid-19 data with SIR epidemic model for spread of diseases.

The SIR Model consists of three compartments, Susceptible, Infected and Recovered. S(t), I(t), R(t) represent the number of susceptible, 
infected and removed individuals at time ‘t’ respectively. 

## Approach/Methodology Used

### SIR Deterministic Model
* In this model, we would assume no births. 
* There can only be infections, recovery and deaths as a result of infection. 
* A susceptible individual can get infected by coming in contact with an infected individual. 
* An infected individual may either die or recover from the disease. We would consider a dead and recovered person as the equal i.e. he would become a removed individual. 
* The total number of Susceptible, Infected and Recovered individuals in the system would remain constant i.e.  S(t)+I(t)+R(t)=N, 
where N is the total population size.
* The model is governed by the equations
  * dS/dt= -&beta;SI/N
  * dI/dt= &beta;SI/N-&gamma;I
  * dR/dt= &gamma;I
  
Since the total population is assumed to be constant, i.e. S(t)+I(t)+R(t)=N, these three equations can be reduced to two equations with two variables by taking R(t)=N-S(t)-I(t). The two variables now are S(t) and I(t). 
<img src="https://www.lewuathe.com/assets/img/posts/2020-03-11-covid-19-dynamics-with-sir-model/sir.png" width=500>

###  The SIR Discrete Time Markov Chain (DTMC) Model
S(t), I(t), R(t) represent the discrete random variables for no. of susceptible, infected and removed individuals at time ‘t’ respectively
N is the total population.

Here t{0,t,2t,...} and  S(t), I(t), R(t){0,1,...,N}. The variables t, S(t), I(t) and R(t) are all discrete. The remaining definitions and assumptions are similar to the deterministic model.

### The SIR Continuous Time Markov Chain (CTMC) Model
Similar to the DTMC SIR model, S(t), I(t){0,1,2,3,..., N} but t &in; [0,\infty) 
The remaining definitions and assumptions are similar to those described in the previous models.





