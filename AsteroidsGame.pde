Spaceship ship = new Spaceship(3, new int[] {15, -6, -6}, new int[] {0, -6, 6}, color(255,255,255), 300, 300, 0, 0, 0);
HashMap<Character, Boolean> keys = new HashMap<Character, Boolean>();
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
   if(keys.getOrDefault('w', false)){
     ship.accelerate(.1);
   }
   if(keys.getOrDefault('s', false)){
     ship.accelerate(-.1);
   }
   if(keys.getOrDefault('a', false)){
     ship.turn(-4);
   }
   if(keys.getOrDefault('d', false)){
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
  keys.put(key, true);
}
void keyReleased(){
  keys.put(key, false);
}
