function circles(xk,yk,r) 

x=0;
y=r;
error=3-2*r;

while (x<=y)
    hold on;
     %1st Octant
    image(y+xk,x+yk,0)
     %2nd Octant
    image(x+xk,y+yk,0) 
     %3rd Octant
    image(xk-x,y+yk,0)
     %4th Octant
    image(xk-y,x+yk,0)
     %5th Octant
    image(xk-y,yk-x,0)
     %6th Octant
    image(xk-x,yk-y,0)
     %7th Octant
    image(x+xk,yk-y,0)
     %8th Octant
    image(y+xk,yk-x,0)
    x=x+1;
    if(error>=0)
        y=y-1;
        error=error-4*y;
    end
    error=error+4*x+2;
end
axis equal;
