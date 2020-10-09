ball player;
wall[] walls; 

 
void setup() {
 
  size(1000, 530);
 
  player = new ball(50,300);
  

  
 
  walls = new wall[40];
 walls[0] = new wall (0,0,990,10);
  walls[1] = new wall (0,520,1090,10);
  walls[2] = new wall (0,0,10,530);
  walls[3] = new wall (990,0,10,520);
  walls[4] = new wall (50,50,10,430);
  walls[5] = new wall (50,50,890,10);
  walls[6] = new wall (100,100,10,420);
  walls[7] = new wall (100,100,100,10);
  walls[8] = new wall (250,60,10,100);
  walls[9] = new wall (160,150,100,10);
  walls[10] = new wall (160,200,150,10);
 walls[11] = new wall (310,100,10,210);
 walls[12] = new wall (100,250,150,10);
  walls[13] = new wall (160,300,150,10);
 walls[14] = new wall (160,300,10,170);
  walls[15] = new wall (220,350,10,120);
 walls[16] = new wall (220,350,160,10);
 walls[17] = new wall (370,50,10,500);
 walls[18] = new wall (220,470,100,10);
 walls[19] = new wall (310,410,10,70);
 walls[20] = new wall (930,50,10,150);
 walls[21] = new wall (490,190,440,10);
 walls[22] = new wall (870,110,10,90);
 walls[23] = new wall (820,50,10,100);
 walls[24] = new wall (430,140,340,10);
 walls[25] = new wall (430,95,340,10);
 walls[26] = new wall (430,95,10,365);
  walls[27] = new wall (490,190,10,210);
 walls[28] = new wall (430,460,510,10);
 walls[29] = new wall (490,400,70,10);
 walls[30] = new wall (550,250,10,150);
 walls[31] = new wall (620,400,310,10);
walls[32] = new wall  (930,400,10,60);
 walls[33] = new wall (930,460,60,10);
 walls[34] = new wall (930,200,10,100);
 walls[35] = new wall (620,350,320,10);
 walls[36] = new wall (620,350,10,50);
  walls[37] = new wall (620,250,250,10);
 walls[38] = new wall (620,250,10,150);
 walls[39] = new wall (860,310,10,50);

 
} 
void draw() {
 
  background(255, 255, 255); 
   
 
  player.draw();
  player.move(walls);
 
  for(int i = 0; i < walls.length; i = i + 1){
    walls[i].draw();
  }
 
}
 
class ball {
 
  float x;
  float y;
 
  ball(float Xx, float Yy){
    x = Xx;
    y = Yy;
  }
 
  void draw(){
    fill(#FF0000);
    ellipse(x,y,25,25);
  }
 
  void move(wall[] walls){
 
    float X = x;
    float Y = y;
 
    if (keyPressed==true) {
 
     
 
      if (key=='a') { 
        X= X - 4;
      } 
      if (key=='d') { 
        X = X + 4;
      } 
      if (key=='w') { 
        Y = Y - 4;
      } 
      if (key=='s') { 
        Y = Y + 4;
      }
      if(x<12.5){
    x=12.5;}
  if(y<12/5){
    y=12.5;}
  if(x>987.5){
    x=987.5;}
  if(y>517.5){
    y=517.5;}
    }
 
    boolean Collided = false;
    for(int i = 0; i < walls.length; i = i + 1){
      if(X > walls[i].x && X < (walls[i].x + walls[i].w) && Y > walls[i].y && Y < walls[i].y + walls[i].h){
        Collided = true;
      }
    }
 
    if(Collided == false){
      x = X;
      y = Y;
    }
     if(x > 940 && y > 470){
       fill(#0DFFA4);
   background(0);
   textSize(70);
   textAlign(CENTER);
   text("You Win!",450,250);
     }
  }
 
}
 
class wall {
 
  float x;
  float y;
  float w;
  float h;
 
  wall(float Xx, float Yy, float Ww, float Hh){
    x = Xx;
    y = Yy;
    w = Ww;
    h = Hh;
  }
 
  void draw(){
    fill(#030303);
    rect(x,y,w,h);
    
    
  }
 
}
