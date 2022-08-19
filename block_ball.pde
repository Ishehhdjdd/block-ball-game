int n = 0;
int score = 0 ; 
int hp = 5 ;
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
    
       if (bar.hit2(ball) ==  true) {
        ball.bounce();
    }
    // check blocks
    for (int i = 0; i < b.length; i++) {
        if (b[i] == null) {
            continue;
        }
        if (b[i].hit2(ball) == true) {
            ball.bounce();
            score = score + 10 ;
            // block set null
            b[i] = null;
            break;
        }
    }
        
    // ball movement
    if (ball.dx ==  0 && ball.dy ==  0) {
        // ball is on the bar
        ball.moveByBar(bar);
        if (mousePressed) {
            ball.fire();
        }
    } else{
        ball.move();
    }
    ball.show(); 
    showScoreHp ( );
}
void  showScoreHp ( ){
textSize ( 36 );
text ( "Hp"+ hp , 700,540);
text ( "Score "+ score , 700,580);

}
void keyPressed() {
    if (keyCode == UP) {
        ball.fire();
        
        
    }
}
