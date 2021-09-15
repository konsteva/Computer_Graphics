function bresenham(p1,p2)

    %Setting the point with smallest x coordinate as starting point
    if p1(1) <= p2(1)
        x1 = p1(1);
        y1 = p1(2);
        
        x2 = p2(1);
        y2 = p2(2);
    else
        x1 = p2(1);
        y1 = p2(2);
        
        x2 = p1(1);
        y2 = p1(2);
    end
    
    dy = (y2-y1);
    dx = (x2-x1);
    
    slope = dy/dx;

    x = x1;
    y = y1;
    
    i = 1;
    % When the line is steep decreasing (3rd and 7th octant)
    if slope < -1
                
        c1 = 2*dx;
        error = c1-abs(dy) ;
        c2 = error-abs(dy);
            
        x_points = zeros(size(dy));
        y_points = zeros(size(x_points));
        
        while (y2 <= y)
            x_points(i) = x;
            y_points(i) = y;
            if error<0
                error=error+c1;
            else
                x=x+1;
                error=error+c2;
            end
            y = y-1;
            
            i = i+1;
        end

    % Decreasing (4th and 8th octant)
    elseif slope >= -1 && slope < 0

        c1 = 2*abs(dy);
        error = c1-dx ;
        c2 = error-dx;
        
        x_points = zeros(size(dx));
        y_points = zeros(size(x_points));
        
        while (x <= x2)
            x_points(i) = x;
            y_points(i) = y;
            if error<0
                error=error+c1;
            else
                y=y-1;
                error=error+c2;
            end
            x = x+1;
           
            i = i+1;
        end

    % Increasing (5st and 1st octant)
    elseif slope >= 0 && slope < 1
      
        c1=2*dy;
        error=c1-dx;
        c2=error-dx;
        
        x_points = zeros(size(dx));
        y_points = zeros(size(x_points));

        i = 1;
        while (x<=x2)
            x_points(i) = x;
            y_points(i) = y;

            if (error<0)
                error=error+c1;
            else
                y=y+1;
                error=error+c2;
            end
            x = x+1;

            i = i+1;
        end

    % Steep Increasing (6th and 2nd octant)
    % Checked!!
    elseif slope > 1

        c1 = 2*dx;
        error = c1-dy ;
        c2 = error-dy;
        
        x_points = zeros(size(dy));
        y_points = zeros(size(x_points));

        while (y <= y2)
            x_points(i) = x;
            y_points(i) = y;

            if error<0
                error=error+c1;
            else
                x=x+1;
                error=error+c2;
            end
            y = y+1;
            
            i = i+1;
        end

    end
    
    hold on
    
    plot(x_points,y_points)

    axis equal;