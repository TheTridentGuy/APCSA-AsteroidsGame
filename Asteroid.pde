class Asteroid extends Floater {
  protected int turnspeed;
  Asteroid(){
        this.corners = (int)(Math.random()*8)+10;
        this.xCorners = new int[this.corners];
        this.yCorners = new int[this.corners];
        for(int i=0; i<this.corners; i++) {
            float angle = (float) i / this.corners * 2 * (float) Math.PI;
            float radius = (float)(Math.random()*10)+15;
            this.xCorners[i] = (int)(radius*(float)Math.cos(angle));
            this.yCorners[i] = (int)(radius*(float)Math.sin(angle));
        }
        this.myColor = color(100,100,100);
        this.myCenterX = Math.random()*600;
        this.myCenterY = Math.random()*600;
        this.myXspeed = (Math.random()*3)-1;
        this.myYspeed = (Math.random()*3)-1;
        this.myPointDirection = (int)(Math.random()*360);
        this.turnspeed = (int)(Math.random()*2)==1?1:-1;
    }
    public void move(){
      super.turn(this.turnspeed);
      super.move();
    }
}
