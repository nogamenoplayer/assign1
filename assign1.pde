/* please implement your assign1 code in this file. */
PImage shipImg;//fighter
PImage ImgEnemy;
PImage ImgTreasure;
PImage ImgHp;
PImage bg;

  int C,D;//bg x y 
  int speedC,speedD;  //bg
  
  
  int z;      //fighter x

  int A,B;      //Enemy 
  int speedA,speedB;  //Enemy
  
  int E,F;      //Treasure 
  
  int x,y,w,h; //hp rect
  
  

void setup () {
  size(640,480) ;  // must use this size.
  
  bg=loadImage("img/bg1.png");
  
  
  
  bg=loadImage("img/bg2.png");
   
   
  
  
  ImgEnemy=loadImage("img/enemy.png");
    A=100;
    B=100;
    speedA =floor(random(5,0));
    speedB =floor(random(0,0));
    //Enemy 
    
    ImgTreasure=loadImage("img/treasure.png");
    E =floor(random(0,450));
    F =floor(random(0,450));
  //Treasure
  
   x=0;
   y=5;
   w=100;
   h=20;
   ImgHp=loadImage("img/hp.png");
   w=floor(random(10,200));
   //hp
  
  z=450;  //fighter x
  shipImg=loadImage("img/fighter.png");    //fighter
  
  
  // your code
}

void draw() {
  
  
  
  
  
  
  image(bg,C,D);
   C+=speedC;
   D+=speedD;
        //bg
  
  image(shipImg,z,200); //fighter 
  
  image(ImgEnemy,A,B);
    A+=speedA;
    B+=speedB;
    A%=640;
  
  image(ImgTreasure,E,F);
   
   
  fill(#ff0000);
  rect(x,y,w,h);
  image(ImgHp,0,0);
  
  
  // your code
}
