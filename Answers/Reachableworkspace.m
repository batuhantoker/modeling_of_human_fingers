clc
clear
syms q1 q2 q3 l1 l2 l3


q1i=40;
q1f=60;
q2i=0;
q2f=60;
q3i=-10;
q3f=80;
l1 = 20;
l2 = 45;
l3 = 30;
q1 = deg2rad(linspace(q1i,q1f,200));
q2 = deg2rad(linspace(q2i,q2f,200));
q3 = deg2rad(linspace(q3i,q3f,200));

a=1;
for i=1:length(q1)
    for j=1:length(q2)
        for k=1:length(q3)

        x(a,1) =  l3*sin(q2(j)+q3(k))*cos(q1(i)) + l2*cos(q1(i))*sin(q2(j));

        y(a,1) = l3*cos(q2(j)+q3(k))*sin(q1(i) ) + l2*sin(q1(i))*sin(q2(j));

        z(a,1) = l3*cos(q2(j)+q3(k)) + l2*cos(q2(j)) + l1;
        a=a+1;
        end
    end
end
figure
scatter3(x,y,z)
view(0,90)  % XY
title('Workspace of Thumb XY view')
figure
scatter3(x,y,z)
view(0,0)   % XZ
title('Workspace of Thumb XZ view')
figure
scatter3(x,y,z)
view(90,0)  % YZ
title('Workspace of Thumb YZ view')
figure
scatter3(x,y,z)
title('Workspace of Thumb 3D view')


