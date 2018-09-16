syms theta1;
syms theta2;
syms theta3;
syms theta4;
syms theta5;
syms theta6;
T10=[cos(90+theta1),-sin(90+theta1)*cos(-90),sin(90+theta1)*sin(-90),0*cos(90+theta1);sin(90+theta1),cos(90+theta1)*cos(-90),-cos(90+theta1)*sin(-90),0*sin(90+theta1);0,sin(-90),cos(-90),0;0,0,0,1];
T21=[cos(0+theta2),-sin(0+theta2)*cos(0),sin(0+theta2)*sin(0),15*cos(0+theta2);sin(0+theta2),cos(0+theta2)*cos(0),-cos(0+theta2)*sin(0),15*sin(0+theta2);0,sin(0),cos(0),43;0,0,0,1];
T32=[cos(90+theta3),-sin(90+theta3)*cos(90),sin(90+theta3)*sin(90),0*cos(90+theta3);sin(90+theta3),cos(90+theta3)*cos(90),-cos(90+theta3)*sin(90),0*sin(90+theta3);0,sin(90),cos(90),-2;0,0,0,1];
T43=[cos(0+theta4),-sin(0+theta4)*cos(-90),sin(0+theta4)*sin(-90),43*cos(0+theta4);sin(0+theta4),cos(0+theta4)*cos(-90),-cos(0+theta4)*sin(-90),43*sin(0+theta4);0,sin(0),cos(0),0;0,0,0,1];
T54=[cos(45+theta5),-sin(45+theta5)*cos(90),sin(45+theta5)*sin(90),0*cos(45+theta5);sin(45+theta5),cos(45+theta5)*cos(90),-cos(45+theta5)*sin(90),0*sin(45+theta5);0,sin(45),cos(45),0;0,0,0,1];
T65=[cos(0+theta6),-sin(0+theta6)*cos(0),sin(0+theta6)*sin(0),0*cos(0+theta6);sin(0+theta6),cos(0+theta6)*cosd(0),-cos(0+theta6)*sin(0),0*sin(0+theta6);0,sin(0),cos(0),6;0,0,0,1];
T20=T10*T21;
T30=T10*T21*T32;
T40=T10*T21*T32*T43;
T50=T10*T21*T32*T43*T54;
T60_P=T10*T21*T32*T43*T54*T65;
X=T60_P(1,4);
Y=T60_P(2,4);
Z=T60_P(3,4);
J=jacobian([X,Y,Z],[theta1,theta2,theta3,theta4,theta5,theta6])
matlabFunction(J,'File','Puma_560')