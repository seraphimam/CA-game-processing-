
int room;
int steps = 0, encounter;
int sqw = 40,sqh = 45;

protected boolean saved = false;  
protected boolean up = false, down = false, left = false, right = false;

/*****************************************************************************************************************************************************************/


void drawmap(int mapid){
  
  switch(mapid){
      case 1:
        bg = loadImage("src/backgroundimage/map1.jpg");
        
        room = 2;
      break;
      
      case 2:
      
      break;
  
  }
}

void isBoundary(){
  if(left){
  if(p.charX == -sqw){
    
      left = false;
      p.charX += sqw;
      steps--;
    }
  }
  if(right){
  if(p.charX == width){
    
      right = false;
      p.charX -= sqw;
      steps--;
    }
  }
  if(up){
  if(p.charY == -sqh){
    
      up = false;
      p.charY += sqh;
      steps--;
    }
  }
  if(down){
  if(p.charY == height){
    
      down = false;
      p.charY -= sqh;
      steps--;
    }
  }
}

void move() {
  if(up){
        p.set_y(p.charY - 45);
        steps++;
      }
      if(down){
        p.set_y(p.charY + 45);
        steps++;
      }
      if(right){
        p.set_x(p.charX + 40);
        steps++;
      }
      if(left){
        p.set_x(p.charX - 40);
        steps++;
      }
}

void monsterappear() {
  if(room < 80)
  {
      encounter = r.nextInt(100);
      encounter += steps;
      
      if(encounter >= 60){
        println("mob!");
        steps = 0;
      }
  }
  
  
}

class Battle  {

}

class backpack  {

}
