%This function compute the gain controller K and the scaling block N to use
%the system as a tracker of the reference signal which is the angle 
%theta(t) of the rotating arm
%% SETUP Rotpen
function [K,N,info,Ep, Ek,K_swing1,K_swing2,mu,eps] = setup_FURPEN()
clc;
    % Set the electromechanical parameters
    eta__g = 0.85e0;
    eta__m = 0.87e0;
    k__g = 70;
    k__m = 0.76e-2;
    k__t = 0.76e-2;
    r__m = 0.26e1;
    V__m = 0;
    
    % Set the rotary arm parameters
    J__p = 0.23e-2;
    m__p = 0.125e0;
    L__r = 0.215e0;
    m__r = 0.250;
    L__p = 0.335e0;
    J__r = 0.23e-2;
    B__p = 0.0e0;
    tau__1 = 0;
    g = 0.981e1;
    tau__2 = 0;
    B__r = 0.0e0;
    
    %This runs furuta pendulum model and sets up its state space representation
    FURPEN_SSR_eqns;
    
    % Transfer function system
    [num,den]=ss2tf(A,B,C,D);
    TF = tf(num, den);
    disp("Transfer Function Furuta Pendulum");
    TF
    
    disp("Zeros");
    disp(roots(num));
    disp("Poles");
    disp(roots(den));
    figure(134);
    
end
%% Plot the result
