function elipsis(xp,yp,a,b)

hold on

a1=a^2;
b1=b^2;
axis_a=2*a1;
axis_b=2*b1;
dx=axis_b*a;
dy=0;
x=a;
y=0;
fmid=b1*(0.25-x)+a1;

while (dx > dy)
    %2o οκταμοριο
    image(x+xp,y+yp,0);
    %3ο οκταμοριο
    image(xp-x,y+yp,0);
    %6ο οκταμοριο
    image(xp-x,yp-y,0);
    %7ο οκταμοριο
    image(x+xp,yp-y,0);
    y=y+1;
    dy=dy+axis_a;
    if (fmid >= 0)
        x=x-1;
        dx=dx-axis_b;
        fmid=fmid-dx;
    end
    fmid=fmid+dy+a1;
end
fmid=fmid-(dy + dx)/2+0.75*(b1-a1);

while(x >= 0)
    %1ο οκταμοριο
    image(x+xp,y+yp,0);
    %4ο οκταμοριο
    image(xp-x,y+yp,0);
    %5o οκταμοριο
    image(xp-x,yp-y,0);
    %8o οκταμοριο
    image(x+xp,yp-y,0);
    x=x-1;
    dx=dx-axis_b;
    if (fmid <= 0)
        y=y+1;
        dy=dy+axis_a;
        fmid=fmid+dy;
    end
    fmid=fmid-dx+b1;
end

axis equal;