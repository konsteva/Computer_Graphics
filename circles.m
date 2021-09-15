function circles(xk,yk,r) 

x=0;
y=r;
error=3-2*r;

while (x<=y)
    hold on;
     %1o οκταμοριο
    image(y+xk,x+yk,0)
     %2o οκταμοριο
    image(x+xk,y+yk,0) 
     %3o οκταμοριο
    image(xk-x,y+yk,0)
     %4ο οκταμοριο
    image(xk-y,x+yk,0)
     %5ο οκταμοριο
    image(xk-y,yk-x,0)
     %6ο οκταμοριο
    image(xk-x,yk-y,0)
     %7ο οκταμοριο
    image(x+xk,yk-y,0)
     %8ο οκταμοριο
    image(y+xk,yk-x,0)
    x=x+1;
    if(error>=0)
        y=y-1;
        error=error-4*y;
    end
    error=error+4*x+2;
end
axis equal;