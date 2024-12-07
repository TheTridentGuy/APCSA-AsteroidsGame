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
}
