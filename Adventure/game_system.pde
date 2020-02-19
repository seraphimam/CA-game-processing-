/*******************************************
key system inside game
********************************************/ 
  Random r = new Random();
  
  
  int enemy_count;


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

     /* friendly_unit = 1 monster: 1-2
        friendly_unit = 2 monster: 2-3
        friendly_unit = 3 monster: 3-4
        
     
      */
void monsterappear() {
  if(room < 80)
  {
    
      encounter   = steps + r.nextInt(20);
      
      if(encounter >= 60){
        
        enemy_count =  r.nextInt(room % 3 ) + 1;
        
        room = 90;
                
        steps = 0;
        
        encounter = 0;
      }
  }  
}                    //close monsterappear()
