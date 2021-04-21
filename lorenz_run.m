%LORENZ Function generates the lorenz attractor of the prescribed values
% of parameters rho, sigma, beta
%
% [X,Y,Z] = LORENZ(RHO,SIGMA,BETA,INITV,T,EPS)
% X, Y, Z - output vectors of the strange attactor trajectories
% RHO - Rayleigh number
% SIGMA - Prandtl number
% BETA - parameter
% INITV - initial point
% T - time interval
% EPS - ode solver precision

rho = 28;
sigma = 10;
beta = 8/3;
[X Y Z] = lor(rho, sigma, beta);
plot3(X,Y,Z);

