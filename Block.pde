public class Block {
    float x;
    float y;
    float w;
    float h;
    
    public Block(float mx,float my,float mw,float mh) {
        this.h = mh;
        this.x = mx;
        this.y = my;
        this.w = mw;
    }
    void show() {
        
        rect(this.x,this.y,this.w,this.h);
        
        
    }
}
