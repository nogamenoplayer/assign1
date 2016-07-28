/* please implement your assign1 code in this file. */
PImage shipImg;//fighter
PImage ImgEnemy;
PImage ImgTreasure;
PImage ImgHp;
PImage bg1;
PImage bg2;

  int C,D;//bg x y 
  int speedC,speedD;  //bg
  

  int A,B;       
  int speedA,speedB;  //Enemy
  
  int E,F;      //Treasure 
  
  int x,y,w,h; //hp rect
  
  
void setup () {
  size(640,480) ;  // must use this size.
  
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  
  ImgEnemy=loadImage("img/enemy.png");
   
    speedA =floor(random(5,470));
    speedB =floor(random(35,420));
    //Enemy 
    
    ImgTreasure=loadImage("img/treasure.png");
    E =floor(random(150,450));
    F =floor(random(35,450));
  //Treasure
  
   x=0;
   y=5;
   w=100;
   h=20;
   ImgHp=loadImage("img/hp.png");
   w=floor(random(10,200));
   //hp
  
 
  shipImg=loadImage("img/fighter.png");    //fighter
  
  
  // your code
}

void draw() {
  image(bg1,speedC % 1280 -640,0);
  image(bg2,(speedC+640) % 1280 -640,0);
  speedC += 1;
        //bg
 
 
  
  image(shipImg,580,240); //fighter 
  
  image(ImgEnemy,speedA,speedB);
    speedA+=3;
    speedA%=640;
  
  image(ImgTreasure,E,F);
   
   
  fill(#ff0000);
  rect(x,y,w,h);
  image(ImgHp,0,0);
  
  
  // your code
}
