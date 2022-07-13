int x = 70;
int y = 70;
int a = 0;
Block[] numbers = new Block[49];
Bar bar = new Bar(450,500,100,10);
void setup() {
    size(900, 600);
    for (int i = 0; i < 7; i++) {
        x = x + 60;
        for (int j = 0; j < 7; j++) {
        
            
            y=y+20 ;
            numbers[a] = new Block(x,y,50, 10);
            a++;
            
            
        }
        y= 70; 
    }
    
    
}

void draw() {
    background(10);
    for (int i = 0; i < numbers.length; i++) {
        
        numbers[i].show();
        
    }
bar.move();
bar.show ();
}

