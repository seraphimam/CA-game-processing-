/*******************************************
key system inside game
********************************************/ 

void drawmap(int mapid){
  
  switch(mapid){
      case 1:
        bg = loadImage("src/backgroundimage/map1.png");
        
        room = 2;
      break;
      
      case 2:
      
      break;
  
  }                //close switch map according to mapid(can not use room firstly)
}                    // close drawmap()              

void isBoundary(){
  
  if(left){
  if(p[0].charX == -sqw){
    
      left = false;
      p[0].charX += sqw;
      steps--;
    }
  }
  
  if(right){
  if(p[0].charX == width){
    
      right = false;
      p[0].charX -= sqw;
      steps--;
    }
  }
  
  if(up){
  if(p[0].charY == -sqh){
    
      up = false;
      p[0].charY += sqh;
      steps--;
    }
  }
  
  if(down){
  if(p[0].charY == height){
    
      down = false;
      p[0].charY -= sqh;
      steps--;
    }    
  }
  
}                    //close isBoundary


/*******************************************
move function, link to keyaction
********************************************/ 

void move() {
  
  if(up){
        p[0].set_y(p[0].charY - 45);
        steps++;
      }
      
      if(down){
        p[0].set_y(p[0].charY + 45);
        steps++;
      }
      
      if(right){
        p[0].set_x(p[0].charX + 40);
        steps++;
      }
      
      if(left){
        p[0].set_x(p[0].charX - 40);
        steps++;
      }
}                    //close move()
/*----------------------------------------------------------------------------------------------*/
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
}                    //close monsterappear()
