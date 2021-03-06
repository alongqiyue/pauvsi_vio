%create all variables
syms x y z dx dy dz q0 q1 q2 q3 bgx bgy bgz bax bay baz ax ay az wx wy wz dt


%create the state
state = [x; y; z; dx; dy; dz; q0; q1; q2; q3; bgx; bgy; bgz; bax; bay; baz];

%this rotates the acceleration into the world coordinate frame
newA = [(1-2*q2^2-2*q3^2), 2*(q1*q2+q0*q3), 2*(q1*q3-q0*q2); 
        2*(q1*q2-q0*q3), (1-2*q1^2-2*q3^2), 2*(q2*q3+q0*q1);
        2*(q1*q3+q0*q2), 2*(q2*q3-q0*q1), (1-2*q1^2-2*q2^2)] * [(ax+bax); (ay+bay); (az+baz)];

%create the delta quaternion
w_mag = sqrt((wx+bgx)^2 + (wy+bgy)^2 + (wz+bgz)^2);
%syms w_mag

%IMPORTANT--- if the omega values are 0 use this
%dq0 = 1;
%dq1 = 0;
%dq2 = 0;
%dq3 = 0;

dq0 = cos(0.5 * w_mag * dt);
dq1 = (2 * wx / w_mag) * sin(0.5 * w_mag * dt);
dq2 = (2 * wy / w_mag) * sin(0.5 * w_mag * dt);
dq3 = (2 * wz / w_mag) * sin(0.5 * w_mag * dt);

dq_mag = sqrt(dq0^2+dq1^2+dq2^2+dq3^2);
dq0 = dq0 / dq_mag;
dq1 = dq1 / dq_mag;
dq2 = dq2 / dq_mag;
dq3 = dq3 / dq_mag;
    
hx = [x + dx*dt + 0.5*newA(1)*dt*dt;
      y + dy*dt + 0.5*newA(2)*dt*dt;
      z + dz*dt + 0.5*newA(3)*dt*dt;
      dx + newA(1)*dt;
      dy + newA(2)*dt;
      dz + newA(3)*dt;
      q0*dq0 - q1*dq1 - q2*dq2 - q3*dq3;
      q0*dq1 + q1*dq0 - q2*dq3 + q3*dq2;
      q0*dq2 + q1*dq3 + q2*dq0 - q3*dq1;
      q0*dq3 - q1*dq2 + q2*dq1 + q3*dq0;
      bgx;
      bgy;
      bgz;
      bax;
      bay;
      baz];
  


syms s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20
syms s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38
syms s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50
syms s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 s67 s68 s69 s70
H = simplify(subs(jacobian(hx, state), [bax;bay;baz;bgx;bgy;bgz], [0;0;0;0;0;0]));
%H = subs(H, [bax;bay;baz;bgx;bgy;bgz], [0;0;0;0;0;0]);
[H, s1] = subexpr(H, s1);
H = simplify(H);
[H, s2] = subexpr(H, s2);
H = simplify(H);
[H, s3] = subexpr(H, s3);
H = simplify(H);
[H, s4] = subexpr(H, s4);
H = simplify(H);
[H, s5] = subexpr(H, s5);
H = simplify(H);
[H, s6] = subexpr(H, s6);
H = simplify(H);
[H, s7] = subexpr(H, s7);
H = simplify(H);
[H, s8] = subexpr(H, s8);
H = simplify(H);
[H, s9] = subexpr(H, s9);
H = simplify(H);
[H, s10] = subexpr(H, s10);
H = simplify(H);
[H, s11] = subexpr(H, s11);
H = simplify(H);
[H, s12] = subexpr(H, s12);
H = simplify(H);
[H, s13] = subexpr(H, s13);
H = simplify(H);
[H, s14] = subexpr(H, s14);
H = simplify(H);
[H, s15] = subexpr(H, s15);
H = simplify(H);
[H, s16] = subexpr(H, s16);
H = simplify(H);
[H, s17] = subexpr(H, s17);
H = simplify(H);
[H, s18] = subexpr(H, s18);
H = simplify(H);
[H, s19] = subexpr(H, s19);
H = simplify(H);
[H, s20] = subexpr(H, s20);
H = simplify(H);
[H, s21] = subexpr(H, s21);
H = simplify(H);
[H, s22] = subexpr(H, s22);
H = simplify(H);
[H, s23] = subexpr(H, s23);
H = simplify(H);
[H, s24] = subexpr(H, s24);
H = simplify(H);
[H, s25] = subexpr(H, s25);
H = simplify(H);
[H, s26] = subexpr(H, s26);
H = simplify(H);
[H, s27] = subexpr(H, s27);
H = simplify(H);
[H, s28] = subexpr(H, s28);
H = simplify(H);
[H, s29] = subexpr(H, s29);
H = simplify(H);
[H, s30] = subexpr(H, s30);
H = simplify(H);
[H, s31] = subexpr(H, s31);
H = simplify(H);
[H, s32] = subexpr(H, s32);
H = simplify(H);
[H, s33] = subexpr(H, s33);
H = simplify(H);
[H, s34] = subexpr(H, s34);
H = simplify(H);
[H, s35] = subexpr(H, s35);
H = simplify(H);
[H, s36] = subexpr(H, s36);
H = simplify(H);
[H, s37] = subexpr(H, s37);
H = simplify(H);
[H, s38] = subexpr(H, s38);
H = simplify(H);
[H, s39] = subexpr(H, s39);
H = simplify(H);
[H, s40] = subexpr(H, s40);
H = simplify(H);
[H, s41] = subexpr(H, s41);
H = simplify(H);
[H, s42] = subexpr(H, s42);
H = simplify(H);
[H, s43] = subexpr(H, s43);
H = simplify(H);

H
s1
s2
s3
s4
s5
s6
s7
s8
s9
s10
s11
s12
s13
s14
s15
s16
s17
s18
s19
s20
s21
s22
s23
s24
s25
s26
s27
s28
s29
s30
s31
s32
s33
s34
s35
s36
s37
s38
s39
s40
s41
s42
s43




