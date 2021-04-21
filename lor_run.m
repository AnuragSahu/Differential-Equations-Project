% LORENZ Function generates the lorenz attractor of the prescribed values
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
clc;
clear all;
close all;

%%
rho = 28;
sigma = 10;
beta = 8/3;
initv_1 = [0 1 1.05];
initv_2 = [0 1.000001 1.05];
[X Y Z] = lor(rho, sigma, beta, initv_1);
[X1 Y1 Z1] = lor(rho, sigma, beta, initv_2);

% figure("Name",'Sensitive Dependence on Initial Parameters 1');
% plot(X)
% hold on
% plot(X1)

figure("Name",'Sensitive Dependence on Initial Parameters 2');
plot(Y)
hold on
plot(Y1)

figure("Name",'Sensitive Dependence on Initial Parameters 3');
plot(Z)
hold on
plot(Z1)

% figure("Name",'Butterfly wing pattern');
% subplot(311);
% plot(X,Z);
% subplot(312);
% plot(Y,Z);
% subplot(313);
% plot(X,Y);

% initv_1 = [0 1 1.05];
% initv_2 = [0 1.000001 1.05];
% [X Y Z] = lor(rho, sigma, beta, initv_1);
% [X1 Y1 Z1] = lor(rho, sigma, beta, initv_2);
% 
% figure("Name",'Sensitive Dependence on Initial Parameters 2');
% plot(X)
% hold on
% plot(X1)
