function T60= forward(theta1,theta2,theta3,theta4,theta5,theta6)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
T10=[cosd(90+theta1),-sind(90+theta1)*cosd(90),sind(90+theta1)*sind(90),3*cosd(90+theta1);sind(90+theta1),cosd(90+theta1)*cosd(90),-cosd(90+theta1)*sind(90),3*sind(90+theta1);0,sind(90),cosd(90),0;0,0,0,1];
T21=[cosd(90+theta2),-sind(90+theta2)*cosd(0),sind(90+theta2)*sind(0),0*cosd(90+theta2);sind(90+theta2),cosd(90+theta2)*cosd(0),-cosd(90+theta2)*sind(0),0*sind(90+theta2);0,sind(0),cosd(0),300;0,0,0,1];
T32=[cosd(180+theta3),-sind(180+theta3)*cosd(90),sind(180+theta3)*sind(90),0*cosd(180+theta3);sind(180+theta3),cosd(180+theta3)*cosd(90),-cosd(180+theta3)*sind(90),0*sind(180+theta3);0,sind(90),cosd(90),0;0,0,0,1];
T43=[cosd(-180+theta4),-sind(-180+theta4)*cosd(90),sind(-180+theta4)*sind(90),-4*cosd(-180+theta4);sind(-180+theta4),cosd(-180+theta4)*cosd(90),-cosd(-180+theta4)*sind(90),-4*sind(-180+theta4);0,sind(90),cosd(90),0;0,0,0,1];
T54=[cosd(-90+theta5),-sind(-90+theta5)*cosd(90),sind(-90+theta5)*sind(90),0*cosd(-90+theta5);sind(-90+theta5),cosd(-90+theta5)*cosd(90),-cosd(-90+theta5)*sind(90),0*sind(-90+theta5);0,sind(90),cosd(90),0;0,0,0,1];
T65=[cosd(-140+theta6),-sind(-140+theta6)*cosd(0),sind(-140+theta6)*sind(0),63*cosd(-140+theta6);sind(-140+theta6),cosd(140+theta6)*cosd(0),-cosd(-140+theta6)*sind(0),63*sind(-140+theta6);0,sind(0),cosd(0),0;0,0,0,1];
T20=T10*T21;
T30=T10*T21*T32;
T40=T10*T21*T32*T43;
T50=T10*T21*T32*T43*T54;
T60=T10*T21*T32*T43*T54*T65;
plot3([T10(1,4),T10(1,1)+T10(1,4)],[T10(2,4),T10(2,1)+T10(2,4)],[T10(3,4),T10(3,1)+T10(3,4)],'r') %X10-Axis
hold on;
plot3([T10(1,4),T10(1,2)+T10(1,4)],[T10(2,4),T10(2,2)+T10(2,4)],[T10(3,4),T10(3,2)+T10(3,4)],'g') %Y10-Axis
plot3([T10(1,4),T10(1,3)+T10(1,4)],[T10(2,4),T10(2,3)+T10(2,4)],[T10(3,4),T10(3,3)+T10(3,4)],'b') %Z10-Axis
plot3([T20(1,4),T20(1,1)+T20(1,4)],[T20(2,4),T20(2,1)+T20(2,4)],[T20(3,4),T20(3,1)+T20(3,4)],'r') %X20-Axis
plot3([T20(1,4),T20(1,2)+T20(1,4)],[T20(2,4),T20(2,2)+T20(2,4)],[T20(3,4),T20(3,2)+T20(3,4)],'g') %Y20-Axis
plot3([T20(1,4),T20(1,3)+T20(1,4)],[T20(2,4),T20(2,3)+T20(2,4)],[T20(3,4),T20(3,3)+T20(3,4)],'b') %Z20-Axis
plot3([T30(1,4),T30(1,1)+T30(1,4)],[T30(2,4),T30(2,1)+T30(2,4)],[T30(3,4),T30(3,1)+T30(3,4)],'r') %X30-Axis
plot3([T30(1,4),T30(1,2)+T30(1,4)],[T30(2,4),T30(2,2)+T30(2,4)],[T30(3,4),T30(3,2)+T30(3,4)],'g') %Y30-Axis
plot3([T30(1,4),T30(1,3)+T30(1,4)],[T30(2,4),T30(2,3)+T30(2,4)],[T30(3,4),T30(3,3)+T30(3,4)],'b') %Z30-Axis
plot3([T40(1,4),T40(1,1)+T40(1,4)],[T40(2,4),T40(2,1)+T40(2,4)],[T40(3,4),T40(3,1)+T40(3,4)],'r') %X40-Axis
plot3([T40(1,4),T40(1,2)+T40(1,4)],[T40(2,4),T40(2,2)+T40(2,4)],[T40(3,4),T40(3,2)+T40(3,4)],'g') %Y40-Axis
plot3([T40(1,4),T40(1,3)+T40(1,4)],[T40(2,4),T40(2,3)+T40(2,4)],[T40(3,4),T40(3,3)+T40(3,4)],'b') %Z40-Axis
plot3([T50(1,4),T50(1,1)+T50(1,4)],[T50(2,4),T50(2,1)+T50(2,4)],[T50(3,4),T50(3,1)+T50(3,4)],'r') %X50-Axis
plot3([T50(1,4),T50(1,2)+T50(1,4)],[T50(2,4),T50(2,2)+T50(2,4)],[T50(3,4),T50(3,2)+T50(3,4)],'g') %Y50-Axis
plot3([T50(1,4),T50(1,3)+T50(1,4)],[T50(2,4),T50(2,3)+T50(2,4)],[T50(3,4),T50(3,3)+T50(3,4)],'b') %Z50-Axis
plot3([T60(1,4),T60(1,1)+T60(1,4)],[T60(2,4),T60(2,1)+T60(2,4)],[T60(3,4),T60(3,1)+T60(3,4)],'r') %X60-Axis
plot3([T60(1,4),T60(1,2)+T60(1,4)],[T60(2,4),T60(2,2)+T60(2,4)],[T60(3,4),T60(3,2)+T60(3,4)],'g') %Y60-Axis
plot3([T60(1,4),T60(1,3)+T60(1,4)],[T60(2,4),T60(2,3)+T60(2,4)],[T60(3,4),T60(3,3)+T60(3,4)],'b') %Z60-Axis
end

