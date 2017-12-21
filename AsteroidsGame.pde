Spaceship ash= new Spaceship();
Stars[] stars = new Stars[100];
ArrayList <Asteroid> ast = new ArrayList<Asteroid>();
ArrayList <Bullet> Bullets = new ArrayList<Bullet>();
boolean move, rotateRight, rotateLeft, hyperspace, fire;

boolean up = false;
boolean down = false;
boolean left = false;
boolean right = false;

public void setup(){
  size(500,500);
 for(int i=0;i<stars.length;i++){ stars[i] = new Stars(); }
 for(int r=0;r<20;r++){ ast.add(new Asteroid()); }
}
public void draw()
{
  background(0);
  if(fire)Bullets.add(new Bullet(ash));
  for(int p=0; p<Bullets.size();p++){
   Bullets.get(p).move();
   Bullets.get(p).show();
   Bullets.get(p).myCenterX += Bullets.get(p).myDirectionX;    
   Bullets.get(p).myCenterY += Bullets.get(p).myDirectionY;  
   if(Bullets.get(p).myCenterX==Bullets.get(p).myDirectionX&&Bullets.get(p).myCenterY==Bullets.get(p).myDirectionY){
   Bullets.remove(p);
 }
 for(int o=0;o<ast.size();o++){  
  if (dist(ast.get(o).getX(), ast.get(o).getY(), Bullets.get(p).getX(),Bullets.get(p).getY())<20){
  Bullets.remove(p);
  ast.remove(o);
break;
  }
 }
 }
 for(int i=0;i<stars.length;i++) 
  { 
    stars[i].show();
  }
  ash.show();
  if(right){
   ash.myCenterX += 6;
  }
  if(left){
   ash.myCenterX -= 6;
  }
  if(up){
   ash.myCenterY -= 6;
  }
  if(down){
   ash.myCenterY += 6;
  }
  if(ash.myCenterX<=9){
    ash.myCenterX=489;
  }
  if(ash.myCenterX>=490){
    ash.myCenterX=9;
  }
   if(ash.myCenterY<=9){
    ash.myCenterY=489;
  }
  if(ash.myCenterY>=490){
    ash.myCenterY=9;
  }
  
  for(int r=0;r<ast.size();r++){ 
    float ash1 = dist(ash.getX(),ash.getY(),ast.get(r).getX(),ast.get(r).getY());
    if(ash1< 20){
      ast.remove(r);
  }
  else
  {
    ast.get(r).move();
    ast.get(r).show();
  }
  if(rotateRight){ash.turn(4);}
  if(rotateLeft){ash.turn(-4);}
  if(hyperspace){
    fill(0);
    noStroke();
    rect(0,0,1000,1000);
    for(int i=0;i<200;i++){
      fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      ellipse(250,250,(float)(Math.random()*700),(float)(Math.random()*700));
    }
  }
 }
}
public void keyPressed()
{
   if (key=='w') {up = true; }
   if (key=='d'){right = true;}
   if (key=='a'){left = true;}
   if (key=='s'){down = true;}
   if (key=='e'){rotateRight = true;}
   if (key=='q'){rotateLeft = true;}
   
   if (key=='h'){
     hyperspace=true;
     ash.setX((int)(Math.random()*500));
     ash.setY((int)(Math.random()*500));
     ash.setDirectionX(0);
     ash.setDirectionY(0);
     move=false;
   }
}
public void keyReleased(){
   if (key=='d'){right=false;}
   if (key=='a'){left=false;}
   if (key=='w'){up=false;}
   if (key=='s'){down=false;}
   
   if (key=='e'){rotateRight = false;}
   if (key=='q'){rotateLeft = false;}
   
   if (key=='h'){hyperspace=false;}
}
