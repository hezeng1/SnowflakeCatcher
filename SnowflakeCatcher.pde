Snowflake [] snow;
void setup()
{
  noStroke();
  size(300,300);
  snow = new Snowflake[50];
  for(int i = 0; i<snow.length;i++)
  {
    snow[i] = new Snowflake();
  }
  background(0);
}
void draw()
{
  for(int i = 0;i<snow.length;i++)
  {
    snow[i].lookDown();
    snow[i].erase();
    snow[i].move();
    snow[i].show();
    snow[i].wrap();
  }

}
void mouseDragged()
{
  if(mouseButton == LEFT)
    {
    fill(255,0,0);
    ellipse(mouseX,mouseY,10,10);
    }
  if(mouseButton == RIGHT)
    {
      fill(0);
      ellipse(mouseX,mouseY,50,50);
    }   

}

class Snowflake
{
  int x, y; 
  boolean isMoving; 
  Snowflake()
  {
    x = (int)(Math.random()*301);
    y = (int)(Math.random()*301); 
    isMoving = true; 
  }
  void show()
  {
    fill(255,255,255);
    ellipse(x,y,5,5);
  }
  void lookDown()
  {
    if(get(x,y+5) != color(255,0,0))
       isMoving = true;
     else  
       isMoving = false; 
  }
  void erase()
  {
    fill(0,0,0);
    ellipse(x,y,6,6); 
  }
  void move()
  {
    if(isMoving == true)
      y+=1; 
  }
  void wrap()
  {
     if(y==300)
      {
        fill(0);
        ellipse(x,y,5,5);
        y = 0;
        x = (int)(Math.random()*301);
      }
  }
}



