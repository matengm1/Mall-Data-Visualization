PImage bg;
PImage hd;
int radius = 10, directionX = 0, directionY = 0;
float x=20, y=20, speed=2;
int hdX;
int hdY;
int hdSizeX;
int hdSizeY;
// =========================================================
void setup()
{
  size(752, 549);

//PImage NEWMALL = loadImage("mall.png");
//image(NEWMALL, 1000, 900);                  
//NEWMALL.resize(30, 10);
                                                                                                                                                                                                                                                                      
  smooth();      
  // fill (color(222, 22, 22));
  noStroke();
  ellipseMode(RADIUS);
  bg = loadImage("mall.png");
  hd = loadImage("imgres.png");
  hdX = 20;
  hdY = 275;
  hdSizeX = 25;
  hdSizeY = 25;
  
}
void draw()
{
  background(bg);
  // changing Position
  x=x+speed*directionX;
  y=y+speed*directionY; 
  // check boundaries
  if ((x>width-radius) || (x<radius))
  {   
    directionX=-directionX;
  }
  if ((y>height-radius) || (y<radius))
  {   
    directionY=-directionY;
  } 
  // draw
  // if(direction==1)
  // rect(x, y, 20, 20);
  //fill (color(222, 22, 22)); 
  //ellipse (x, y, radius, radius);    // body
    hd.resize(hdSizeX, hdSizeY);
   image(hd, x, y+250);

  //fill (color(22, 82, 22)); 
  //ellipse (x-4, y-4, 2, 2);  // the eye
   directionY=0;
   directionX=0;
   
   if (hdX > 152 && hdY >= 320) {
     hdSizeX = 20;
     hdSizeY = 20;
   }
   if (hdX > 122 && hdY >= 218) {
     hdSizeX = 25;
     hdSizeY = 25;
   }
    if (hdX > 131 && hdY >= 221) {
     hdSizeX = 30;
     hdSizeY = 30;
   }
   if (hdX > 242 && hdY >= 347) {
     hdSizeX = 35;
     hdSizeY = 35;
   }if (hdX > 218 && hdY >= 317) {
     hdSizeX = 40;
     hdSizeY = 40;
   }
   if (hdX > 62 && hdY >= 308) {
     hdSizeX = 45;
     hdSizeY = 45;
   }
     if (hdX > 77 && hdY >= 206) {
     hdSizeX = 50;
     hdSizeY = 50;
   }
   if (hdX > 203 && hdY >= 341) {
     hdSizeX = 55;
     hdSizeY = 55;
   }
   if (hdX > 80 && hdY >= 332) {
     hdSizeX = 60;
     hdSizeY = 60;
   }
   if (hdX > 194 && hdY >= 305) {
     hdSizeX = 65;
     hdSizeY = 65;
   }
   if (hdX > 140 && hdY >= 338) {
     hdSizeX = 70;
     hdSizeY = 70;
   }
   if (hdX > 260 && hdY >= 215) {
     hdSizeX = 75;
     hdSizeY = 75;
   }
   if (hdX > 146 && hdY >= 173) {
     hdSizeX = 80;
     hdSizeY = 80;
   }
   if (hdX > 83 && hdY >= 158) {
     hdSizeX = 85;
     hdSizeY = 85;
   }
   if (hdX > 212 && hdY >= 188) {
     hdSizeX = 90;
     hdSizeY = 90;
   }
    if (hdX > 164 && hdY >= 227) {
     hdSizeX = 93;
     hdSizeY = 93;
   }
   if (hdX > 263 && hdY >= 332) {
     hdSizeX = 95;
     hdSizeY = 95;
   }
   if (hdX > 203 && hdY >= 221) {
     hdSizeX = 97;
     hdSizeY = 97;
   }
   //hdSizeY
}
// =========================================================
void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == LEFT)
    {
      //if (directionX>0) { 
      directionX=-3;
      directionY=0;
      
      hdX-=3;
      //}
    }
    else if (keyCode == RIGHT)
    {
      //if (directionX<0) {  
      directionX=3;
      directionY=0;
      
      hdX+=3;
      //}
    }
    else if (keyCode == UP)
    {
      //if (directionY<0) {
      directionY=-3;
      directionX=0;
      
      hdY -= 3;
      //}
    }
    else if (keyCode == DOWN)
    {
      //if (directionY<0) { 
      directionY=3;
      directionX=0;
      
      hdY += 3;
      //}
    }
    if (keyCode != DOWN && keyCode != UP && keyCode != LEFT && keyCode != RIGHT)
    {
    directionY=0;
    directionX=0;
    }
    //else
    //{
    // directionY=0;
    // directionX=0;
    //}
  }
  print(", " + hdX, hdY);
}
// =========================================================