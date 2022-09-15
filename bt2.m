syms l1 l2 l3 l4 l5 s;
syms t1 t2;
T1=[1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1];
R1=[cos(t1) -sin(t1) 0 0; sin(t2) cos(t2) 0 0; 0 0 1 0; 0 0 0 1];
T2=[1 0 0 l2; 0 1 0 0; 0 0 1 0; 0 0 0 1];
R2=[cos(t2) -sin(t2) 0 0; sin(t2) cos(t2) 0 0; 0 0 1 0; 0 0 0 1];
T3=[1 0 0 0; 0 1 0 0; 0 0 1 l3; 0 0 0 1];
T4=[1 0 0 l4; 0 1 0 0; 0 0 1 (s-l3-l5); 0 0 0 1];
P=[0;0;0;1];
simplify(T1*R1*T2*R2*T3*T4*P)

l1=20; l2=30; l3=5; l4=40; l5=15; s=5;
syms t1 t2 pi;
for t1=0:0.1:pi/2
    for t2=0:0.1:pi/2
        x=l4*cos(t1 + t2) + l2*cos(t1);
        y=l4*sin(2*t2) + l2*sin(t2);
        z= l1 - l5 + s;
        plot3(x,y,z,'*');
        hold on
    end
end

             
       