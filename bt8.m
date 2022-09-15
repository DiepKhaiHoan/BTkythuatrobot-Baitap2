%{syms l3 l4 l5 l6 ;
syms t1 t2 t3 t4;
R1 = [cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
R2 = [cos(t2) 0 sin(t2) 0; 0 1 0 0; -sin(t2) 0 cos(t2) 0; 0 0 0 1];
T1 = [1 0 0 0; 0 1 0 0; 0 0 1 l3; 0 0 0 1];
R3 = [cos(-t3) 0 sin(-t3) 0; 0 1 0 0; -sin(-t3) 0 cos(-t3) 0; 0 0 0 1];
T2 = [1 0 0 0; 0 1 0 0; 0 0 1 l4; 0 0 0 1];
R4 = [cos(-t4) 0 sin(-t4) 0; 0 1 0 0; -sin(-t4) 0 cos(-t4) 0; 0 0 0 1];
T3 = [1 0 0 -l5; 0 1 0 0; 0 0 1 l6; 0 0 0 1];
P = [0; 0; 0; 1];
simplify(R1*R2*T1*R3*T2*R4*T3*P)%}

syms t1 t2 t3 t4 pi;
l3=30; l4=30; l5=5; l6=15; 
for t1=0:0.2:pi/2
    for t2=0:0.2:pi/2
        for t3=0:0.2:pi/2
            for t4=0:0.2:pi/2
                x = -cos(t1)*(l5*cos(t3 - t2 + t4) + l6*sin(t3 - t2 + t4) - l3*sin(t2) - l4*sin(t2 - t3));
                y = -sin(t1)*(l5*cos(t3 - t2 + t4) + l6*sin(t3 - t2 + t4) - l3*sin(t2) - l4*sin(t2 - t3));
                z =  l6*cos(t3 - t2 + t4) - l5*sin(t3 - t2 + t4) + l3*cos(t2) + l4*cos(t2 - t3);
                plot3(x,y,z,'*');
                hold on 
            end
        end
    end
end
