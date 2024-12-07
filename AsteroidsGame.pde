Spaceship ship = new Spaceship(3, new int[] {15, -6, -6}, new int[] {0, -6, 6}, color(255,255,255), 300, 300, 0, 0, 0);
HashMap<Charachter, Boolean> keys = new HashMap<Charachter, Boolean>

//your variable declarations here
public void setup() 
{
  size(600, 600);
}
public void draw() 
{
  if (keyPressed) {
    if(key == 'w') {
      ship.accelerate(.1);
    } if(key == 's'){
      ship.accelerate(-.1);
    }else if(key == 'a'){
      ship.turn(-4);
    }else if(key == 'd'){
      ship.turn(4);
    }
  }
  background(0);
  ship.move();
  ship.show();
}
void keyPressed(){
  if (key=='a')
    keys[0]=true;
  if (key=='b')
    keys[1]=true;
}
void keyReleased(){
  if (key=='a')
    keys[0]=false;
  if (key=='s')
    keys[1]=false;
}
