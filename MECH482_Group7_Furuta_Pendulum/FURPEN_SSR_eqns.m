% State Space Representation
A = [0 0 1 0; 
     0 0 0 1; 
     0 L__p ^ 2 * L__r * g * m__p ^ 2 / (4 * J__p * L__r ^ 2 * m__p + J__r * L__p ^ 2 * m__p + 4 * J__p * J__r) -(L__p ^ 2 * eta__g * eta__m * k__g ^ 2 * k__m * k__t * m__p + 4 * J__p * eta__g * eta__m * k__g ^ 2 * k__m * k__t + B__r * L__p ^ 2 * m__p * r__m + 4 * B__r * J__p * r__m) / r__m / (4 * J__p * L__r ^ 2 * m__p + J__r * L__p ^ 2 * m__p + 4 * J__p * J__r) -2 * B__p * L__p * L__r * m__p / (4 * J__p * L__r ^ 2 * m__p + J__r * L__p ^ 2 * m__p + 4 * J__p * J__r); 
     0 -2 / r__m / (4 * J__p * L__r ^ 2 * m__p + J__r * L__p ^ 2 * m__p + 4 * J__p * J__r) * (-L__p * L__r ^ 2 * g * m__p ^ 2 * r__m - J__r * L__p * g * m__p * r__m) -2 / r__m / (4 * J__p * L__r ^ 2 * m__p + J__r * L__p ^ 2 * m__p + 4 * J__p * J__r) * (L__p * L__r * eta__g * eta__m * k__g ^ 2 * k__m * k__t * m__p + B__r * L__p * L__r * m__p * r__m) -2 / r__m / (4 * J__p * L__r ^ 2 * m__p + J__r * L__p ^ 2 * m__p + 4 * J__p * J__r) * (2 * B__p * L__r ^ 2 * m__p * r__m + 2 * B__p * J__r * r__m);];
     
B = [0; 0; -(-L__p ^ 2 * eta__g * eta__m * k__g * k__t * m__p - 4 * J__p * eta__g * eta__m * k__g * k__t) / r__m / (4 * J__p * L__r ^ 2 * m__p + J__r * L__p ^ 2 * m__p + 4 * J__p * J__r); 2 / r__m / (4 * J__p * L__r ^ 2 * m__p + J__r * L__p ^ 2 * m__p + 4 * J__p * J__r) * L__p * L__r * eta__g * eta__m * k__g * k__t * m__p;];
C = [1 0 0 0];
D = [0];

% Load into state-space system
sys_FURPEN_ol = ss(A,B,C,D); % Open loop system model
