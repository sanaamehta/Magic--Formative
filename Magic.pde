import processing.sound.*;

Sparkles []Sparks= new Sparkles [100];

PImage magicc;
PImage title;
PImage wand;
PImage Hugh;

PFont Ye; 
boolean drawSparkles= false;

SoundFile file;

void setup()
{
  fullScreen();
  magicc=loadImage("magicc.jpg");
  magicc.resize(width, height);
  imageMode(CENTER); 
  title=loadImage ("title.png");
  wand= loadImage ("wand.png");
  Hugh= loadImage ("Hugh.png");

  file = new SoundFile(this, "stargazing.mp3");
  file.play();
  file.jump(59);
  
    Ye=createFont("Ye.ttf", 40);


  for (int i=0; i<100; i++)
  {
    Sparks[i]=new Sparkles();
  }
}
void draw ()
{
  background (magicc); 
  image(title, width/2, height/2-200, 500, 400);

  image(wand, mouseX, mouseY, 100, 100);
  image(Hugh, 950, height-200, 320, 450);

  if (dist(1070, 485, mouseX, mouseY)<200)
  {
    drawSparkles=true;
  }

  if (dist(1070, 485, mouseX, mouseY)>200)
  {
    drawSparkles=false;
  };
  text(mouseX, 100, 100);
  text(mouseY, 100, 300);
  
  fill(255, 250, 93, 180);
  textFont(Ye);
  text("Staring: Hugh Jackman", width/2, height/2-100);
  
  if (drawSparkles==true)
  {
    for (int i=0; i<100; i++)
    {
      Sparks [i]. Render();
    }
  }
}