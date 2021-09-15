% Creating lines
Line_Points=[-85,85,-85,85,-85,85;15,15,-15,-15,0,0];
x1=0;
y1=0;

point1 = [x1,y1];

for i=1:6
        x2=Line_Points(1,i);
        y2=Line_Points(2,i);
        
        point2 = [x2,y2];
        
        bresenham(point1,point2)
end
        
% Creating Circles
C=[0,0,50,-50;0,0,50,50;100,8,20,20];

for i=1:4
    xk=C(1,i);
    yk=C(2,i);
    
    r=C(3,i);
    
    circles(xk,yk,r);
end

% Creating Ellipsis
E=[50,-50,50,-50,0;185,185,185,185,70;25,25,10,10,40;97,97,65,65,18];

for i=1:4
    xp=E(1,i);
    yp=E(2,i);
    
    a=E(3,i);
    b=E(4,i);
    
    ellipsis(xp,yp,a,b)
end