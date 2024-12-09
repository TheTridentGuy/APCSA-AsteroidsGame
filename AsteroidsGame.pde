Spaceship ship = new Spaceship(3, new int[] {15, -6, -6}, new int[] {0, -6, 6}, color(255,255,255), 300, 300, 0, 0, 0);
ArrayList<Character> keys = new ArrayList<Character>();
Star[] stars = new Star[100];
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();

//your variable declarations here
public void setup() 
{
  size(600, 600);
  for(int i=0; i<stars.length; i++){
    stars[i] = new Star((int)(Math.random()*5)+3,(int)(Math.random()*600),(int)(Math.random()*600));
  }
  for(int i=0; i<10; i++){
    asteroids.add(i, new Asteroid());
  }
}
public void draw() 
{
  background(0);
   if(keys.indexOf('w') > -1){
     ship.accelerate(.1);
   }
   if(keys.indexOf('s') > -1){
     ship.accelerate(-.1);
   }
   if(keys.indexOf('a') > -1){
     ship.turn(-4);
   }
   if(keys.indexOf('d') > -1){
     ship.turn(4);
   }
  for(Star star: stars){
    star.show();
  } 
  for(int i=0; i<asteroids.size(); i++){
    asteroids.get(i).move();
    asteroids.get(i).show();
  }
  ship.move();
  ship.show();
}
void keyPressed(){
  if(key == 'q'){
    ship.hitItChewie();
  }
  int i = keys.indexOf(key);
  if(i > -1){
    keys.set(i, key);
  }else{
    keys.add(key);
  }
}
void keyReleased(){
  int i = keys.indexOf(key);
  if(i > -1){
    keys.remove(i);
  }
}
