class Ball {
    float bx = 0;
    float by = 0;
    float dx = 0;
    float dy = 0;
    float radius;
    Ball(int bx, int by, float dx, float dy) {
        this.bx = bx;
        this.by = by;
        this.dx = dx;
        this.dy = dy;
        this.radius = 15;
        
    }
    void show() {
        
        
        circle(bx, by, radius * 2);
    }
    
    void moveByBar(Bar bar) {
        bx =  bar.x;
        by = bar.y - 15;
    }
    void move( ) {
        if (by < 0) {
            
            
            dy = dy *-  1;
        }
        if (bx < 0) {
            
            
            dx = dx *-  1;
        }
        if (bx > width) {
            
            
            dx = dx *-  1;
        }
        
        if (by > height) {
            
            dx = 0;
            dy = 0;
            hp -- ;
        }
        bx = bx + dx; 
        by = by + dy;
    }
    void fire() {
        
        dy = random(5, 10) *-  1;
        
        dx = 10 - abs(dy);
        if (Math.random()<0.5) {
            
            dx = dx * - 1;
            
            bx = bx + dx; 
            by = by + dy;
        }
    }
    void bounce() {
        
        
        dy = dy *-1;
        by = by + dy;
        bx = bx + dx;
        
    }
    }
        