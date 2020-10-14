import ddf.minim.*;
AudioPlayer player;
Minim minim;

player Player;
int Scene = 0;
PImage sky;
int startTime = 0;

PImage obstacle;
int obstaclex = 350;
int obstacley = -40;

PImage obstacle2;
int obstacle2x;
int obstacle2y;

PImage obstacle3;
int obstacle3y;
int obstacle3x;

PImage obstacle4;
int obstacle4y;
int obstacle4x;

PImage obstacle5;
int obstacle5y;
int obstacle5x;

PImage obstacle6;
int obstacle6x;
int obstacle6y;

PImage obstacle7;
int obstacle7x;
int obstacle7y;

PImage obstacle8;
int obstacle8y;
int obstacle8x;

PImage obstacle9;
int obstacle9y;
int obstacle9x;

PImage obstacle10;
int obstacle10x;
int obstacle10y;

PImage obstacle11;
int obstacle11x;
int obstacle11y;

PImage obstacle12;
int obstacle12y;
int obstacle12x;



PImage lose;
int x = 400;
float[] sineWave;
float circleY = 30;
void setup()
{
  minim = new Minim(this);
  player = minim.loadFile("ay.mp3");
  size(1440, 800);
  smooth();
  Player = new player();
  sky = loadImage("AdobeStock_121081065.jpeg");
  obstacle = loadImage("Untitled drawing (8).png");
  obstacle.resize(700, 500);
  lose = loadImage("0a90de23d5325b62286c13b57648abb8.png");
  obstacle2 = loadImage("Untitled drawing (8) copy.png");
  obstacle3 = loadImage("Untitled drawing (8) copy 2.png");
  obstacle4 = loadImage("Untitled drawing (8) copy 3.png");
  obstacle5 = loadImage("Untitled drawing (8) copy 7.png");
  obstacle6 = loadImage("Untitled drawing (8) copy 8.png");
  obstacle7 = loadImage("Untitled drawing (8) copy 9.png");
  obstacle8 = loadImage("Untitled drawing (8) copy 10.png");
  obstacle9 = loadImage("Untitled drawing (8) copy 11.png");
  obstacle10 = loadImage("Untitled drawing (8) copy 12.png");
  obstacle11 = loadImage("Untitled drawing (8) copy 15.png");
  obstacle12 = loadImage("Untitled drawing (8) copy 19.png");
  sineWave = new float[width];
  for (int i = 0; i < sineWave.length; i++) {
    float r = map(i, 0, width, 0, TWO_PI);
    sineWave[i] = abs(sin(r));
  }
}


void draw()
{
  player.play();
  {
  }
  if (Scene == 1)
  {
    background(0);
    int clock = (millis()-startTime)/1000;
    text(clock, 20, 60);

    if (clock >= 2)
    {
      image(obstacle, obstaclex, obstacley);
      obstacley = obstacley +2;
    }
    if (clock>= 5)
    {
      image(obstacle2, obstacle2x, obstacle2y);
      obstacle2y = obstacle2y +2;
    }
    if (clock>= 7)
    {
      image(obstacle3, obstacle3x, obstacle3y);
      obstacle3y = obstacle3y +2;
    }
    if (clock>= 9)
    {
      image(obstacle4, obstacle4x, obstacle4y);
      obstacle4y = obstacle4y +2;
    }
    if (clock>= 16)
    {
      image(obstacle5, obstacle5x, obstacle5y);
      obstacle5y = obstacle5y +3;
    }
    if (clock>= 18)
    {
      image(obstacle6, obstacle6x, obstacle6y);
      obstacle6y = obstacle6y +2;
    }
    if (clock>= 25 && clock<29)
    {
      fill(255, 255, 255);
      text("Done with the warm up ;)", 400, 400);
    }
    if (clock>= 29 && clock<33)
    {
      fill(255, 255, 255);
      text("Now it really starts", 520, 400);
    }
    if (clock>= 34)
    {
      image(obstacle7, obstacle7x, obstacle7y);
      obstacle7y = obstacle7y +2;
    }
    if (clock>= 37)
    {
      image(obstacle8, obstacle8x, obstacle8y);
      obstacle8y = obstacle8y +2;
    }
    if (clock>= 39)
    {
      image(obstacle9, obstacle9x, obstacle9y);
      obstacle9y = obstacle9y +2;
    }
    if (clock>= 44)
    {
      image(obstacle11, obstacle11x, obstacle11y);
      obstacle11y = obstacle11y +2;
    }
    if (clock>= 45)
    {
      image(obstacle12, obstacle12x, obstacle12y);
      obstacle12y = obstacle12y +2;
    }
    if (clock>= 50)
    {
      text("Good Job!", 520, 400);
    }
    Player.draw();
    fill(255, 0, 0);
    textSize(50);
  }



  if (Scene == 2)
  {

    background(0);
    for (int i = 0; i < sineWave.length; i++) {
      stroke(sineWave[i] * 255);
      line(i, 0, i, height);
    }
    image(lose, 400, circleY);
    circleY++;
    if (circleY > height)
    {
      circleY = 0;
    }
  }
  if (Scene == 0)
  {
    image(sky, 0, 0);
    fill(0);
    textSize(50);
    text("Press E to start the game", 450, 400);
  }
}





  void keyPressed()
  {
    if (key == 'a')
    {
      Player.MoveLeft();
    }

    if (key == 'd')
    {
      Player.MoveRight();
    }
    if (key == 'e')
    {
      Scene = 1;
      startTime = millis();
    }
  }
