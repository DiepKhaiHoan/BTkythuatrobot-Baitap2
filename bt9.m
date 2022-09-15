syms l1 l2 l3 l4 l5 l6 l7 s;
syms t1 t2 t3;
T1 = [1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1];
R1 = [cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
T2 = [1 0 0 0; 0 1 0 l4; 0 0 1 l2; 0 0 0 1];
R2 = [cos(t2) -sin(t2) 0 0; sin(t2) cos(t2) 0 0; 0 0 1 0; 0 0 0 1];
T3 = [1 0 0 0; 0 1 0 l5; 0 0 1 l3; 0 0 0 1];
T4 = [1 0 0 0; 0 1 0 0; 0 0 1 (s-l3-l6); 0 0 0 1];
R3 = [cos(t3) -sin(t3) 0 0; sin(t3) cos(t3) 0 0; 0 0 1 0; 0 0 0 1];
T5 = [1 0 0 0; 0 1 0 0; 0 0 1 -l7; 0 0 0 1];
P = [0; 0; 0; 1];
simplify(T1*R1*T2*R2*T3*T4*R3*T5*P)

syms t1 t2 t3 pi;
l1=40; l2=10; l3=5; l4=30; l5=20; l6=20; l7=15; s=5;
for t1=0:0.1:pi/2
    for t2=0:0.1:pi/2
        for t3=0:0.1:pi/2
            x =  - l5*sin(t1 + t2) - l4*sin(t1);
            y = l5*cos(t1 + t2) + l4*cos(t1);
            z = l1 + l2 - l6 - l7 + s;
            plot3(x,y,z,'*');
            hold on 
        end
    end
end




