
class player
{
int x;
int y;
  player()
  {
    x = 720;
    y = 650;
  }
  
  void draw()
  {
    color c = get(x,y);
    fill(255,255,255);
    ellipse(x, y, 50,50);
    
    
    
    fill(255);
    text(green(c), x+100, y);
    
    if(green(c) > 0)
    {
      Scene = 2;
    }
    
    
  }
  
  void MoveLeft()
  {
    x = x-20;
  }
  
  void MoveRight()
  {
    x = x+20;
  }
}
