class Spaceship extends Floater  
{   
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
    }
    public void hitItChewie(){
      this.myCenterX = (int)(Math.random()*600);
      this.myCenterY = (int)(Math.random()*600);
      this.myXspeed = 0;
      this.myYspeed = 0;
    }
}
