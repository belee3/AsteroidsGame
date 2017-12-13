Spaceship ash= new Spaceship();
Stars[] stars = new Stars[100];
Asteroids [] ast= new Asteroids [20];
boolean move, rotateRight, rotateLeft, hyperspace;

boolean up = false;
boolean down = false;
boolean left = false;
boolean right = false;

public void setup(){
 size(500, 500);
 for(int i=0;i<stars.length;i++){ stars[i] = new Stars(); }
 for(int r=0;r<ast.length;r++){ ast[r] = new Asteroids(); }
}
public void draw()
{
  background(0);
  for(int i=0;i<stars.length;i++) { stars[i].show(); }
  for(int r=0;r<ast.length;r++){ 
  ast.get(r).move();
  ast.get(r).show();}
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
  
  //if(move){ 
  //  ship.move();
  //  ship.accelerate(0.05);
  //}
  if(rotateRight){ash.turn(6);}
  if(rotateLeft){ash.turn(-6);}
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
public void keyPressed()
{
   if (key=='w') {up = true; }
   if (key=='d'){right = true;}
   if (key=='a'){left = true;}
   if (key=='s'){down = true;}
   
   if (key=='f'){rotateRight = true;}
   if (key=='z'){rotateLeft = true;}
   
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
   
   if (key=='f'){rotateRight = false;}
   if (key=='z'){rotateLeft = false;}
   
   if (key=='h'){hyperspace=false;}
}
