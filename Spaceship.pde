class Spaceship extends Floater  
{   
    protected ArrayList<Integer> trailx;
    protected ArrayList<Integer> traily;
    Spaceship(int corners, int[] xCorners, int[] yCorners, int myColor, double myCenterX, double myCenterY, double myXspeed, double myYspeed, double myPointDirection){
        this.corners = corners;
        this.xCorners = xCorners;
        this.yCorners = yCorners;
        this.myColor = myColor;
        this.myCenterX = myCenterX;
        this.myCenterY = myCenterY;
        this.myXspeed = myXspeed;
        this.myYspeed = myYspeed;
        this.myPointDirection = myPointDirection;
        this.trailx = new ArrayList<Integer>();
        this.traily = new ArrayList<Integer>();
    }
    public void hitItChewie(){
      this.myCenterX = (int)(Math.random()*600);
      this.myCenterY = (int)(Math.random()*600);
      this.myXspeed = 0;
      this.myYspeed = 0;
    }
    public void move(){
      if(this.trailx.size() > (int)(Math.random()*10)+20){
        this.trailx = new ArrayList<Integer>(this.trailx.subList(1, this.trailx.size()-1));
        this.traily = new ArrayList<Integer>(this.traily.subList(1, this.traily.size()-1));
      }
      Integer newx = new Integer((int)(this.myCenterX + 10 * Math.cos(Math.toRadians(this.myPointDirection-180))));
      Integer newy = new Integer((int)(this.myCenterY + 10 * Math.sin(Math.toRadians(this.myPointDirection-180))));
      this.trailx.add(newx);
      this.traily.add(newy);
      super.move();
    }
    public void show(){
      noStroke();
      fill((int)(Math.random()*55)+200,(int)(Math.random()*65)+100,0);
      for(int i=0; i<this.trailx.size(); i++){
        ellipse(this.trailx.get(i),this.traily.get(i), (int)(Math.random()*10)+5, (int)(Math.random()*10)+5);
      }
      super.show();
    }
    
}
