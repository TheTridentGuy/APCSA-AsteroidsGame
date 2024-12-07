class Asteroid extends Floater {
  Asteroid(){
        this.corners = (int)(Math.random()*6)+6;
        this.xCorners = new int[this.corners];
        this.yCorners = new int[this.corners];
        for (int i=0; i<this.corners; i++) {
            float angle = (float) i / this.corners * 2 * (float) Math.PI;
            float radius = (float)(Math.random()*15)+10;
            this.xCorners[i] = (int)(radius*(float)Math.cos(angle));
            this.yCorners[i] = (int)(radius*(float)Math.sin(angle));
        }
        this.myColor = color(255,255,255);
        this.myCenterX = (int)(Math.random()*600);
        this.myCenterY = (int)(Math.random()*600);
        this.myXspeed = (int)(Math.random()*2)-1;
        this.myYspeed = (int)(Math.random()*2)-1;
        this.myPointDirection = (int)(Math.random()*360);
    }
    public void move(){
      super.turn(1);
      super.move();
    }
}
