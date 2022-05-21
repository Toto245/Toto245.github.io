 Lh = .215; %Length of arm
    rh = 3.35*10^-2
    Jv = 0.0001845; %pendulum inertia
    Ih = 0.00023849;
    mv = .2;
    mh = .125
    lv = .1675;
    g = 9.81;
    EqA = (-g*mv^2*lv^2*Lh)/(Ih*(Jv+mv*lv^2)+Jv*mv*Lh^2)
    EqA2 = ((Ih+mv*Lh^2)*mv*lv*g)/(Ih*(Jv+mv*lv^2)+Jv*mv*Lh^2)
    EqB1 = (Jv+mv*lv^2)/(Ih*(Jv+mv*lv^2)+Jv*mv*Lh^2)
    EqB2 = (-mv*lv*Lh)/(Ih*(Jv+mv*lv^2)+Jv*mv*Lh^2)
    A = [ 0 1 0 0;EqA 0 0 0;
    0 0 0 1
    EqA2 0 0 0];
    B = [ 0; EqB1; 0; EqB2;];
    C = [ 1 0 1 0];
    D = [0];
    % Transfer function system
    [num,den]=ss2tf(A,B,C,D)
    TF = tf(num, den);
    disp("Transfer Function for Furuta Pendulum");
    TF
    disp("Zeros");
    disp(roots(num));
    disp("Poles");
    disp(roots(den));
    figure(134);
    %Plot of Root Locus
    rlocus(TF);
    %Controlability Maxtrix
    co = [B A*B A^2*B]
    C0 = ctrb(A,B)
    
