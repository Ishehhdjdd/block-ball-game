int n = 0;
Block[] b = new Block[1000];
Bar bar = new Bar(450,500,80,10);
Ball ball = new Ball(0,0,0,0);
void setup() {
    size(900,600);
    int a = 0;
    for (int y = 100;y <=  200;y = y + 30) {
        
        for (int x = 100;x < 800;x = x + 60) {
            b[a] = new Block(x,y,50,10);
            a = a + 1;
        }
        
        
    }
    rectMode(CENTER);
}

void draw() {
    background(10);
    n = n + 1;
    println("-->" + n);
    for (Block n : b) {
        
        if (n!= null) {
            n.show();
        }
        
        
    }
    bar.move();
    bar.show();
    if (ball.dx ==  00 && ball.dy ==  0) {
        
        ball.moveByBar(bar);
        if (mousePressed){


            ball.fire();
        }
    } else{

        ball.move(bar);
    }
    ball.show();
}
void keyPressed() {
    if (keyCode == UP) {
        ball.fire();
        
        
    }
}
