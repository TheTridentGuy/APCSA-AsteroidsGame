class Star //note that this class does NOT extend Floater
{
  protected int size;
  protected int x;
  protected int y;
  Star(int size, int x, int y){
    this.size = size;
    this.x = x;
    this.y = y;
  }
  public void show(){
    fill(255,255,255);
    int rsize = this.size+(((int)(Math.random()*2)-1));
    ellipse(x,y,rsize,rsize);
  }
}
