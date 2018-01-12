class Sparkles
{
  float x;
  float y;
  float speed; 

  Sparkles()
  {
    x= 1070;
    y= 485;
    speed = random(1,5 );
  }

  void Render()
  {
    stroke(0);
    strokeWeight(0.3);
    fill(175, 247, 224);
    ellipse(x, y, 5, 5);

    y-=speed;
    x+=random(-1, 1);

    if (y<0)
    { 
      y=485;
      x=1070;
    }
  }
}