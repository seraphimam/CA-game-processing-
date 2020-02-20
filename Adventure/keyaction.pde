/*******************************************************************
function about keyboard, set variable first, all action base on room 
*********************************************************************/

boolean opt = false;
boolean up = false, down = false, left = false, right = false;
int temp_room;

/*******************************************
quick key and movement 
********************************************/ 

void keyPressed(){
    if(room > 1){
      switch(keyCode){
        case 'a':
        case 'A':
          left = true;
          
      monsterappear();
          //println("change left: " + left);
          break;
        case 'd':
        case 'D':
          right = true;
          
      monsterappear();
          //println("change right: " + right);
          break;
        case 'w':
        case 'W':
          up = true;
          
      monsterappear();
          //println("change up: " + up);
          break;
        case 's':
        case 'S':
          down = true;
          
      monsterappear();
          //println("change down: " + down);
          break;
          
          case 'f':
          case 'F':
            int target_coord[] = new int[2];
            target_coord = p[0].interact();
            
            
            break;
          
          case 'o':
          case 'O':
            
                      
            if(!opt){
              opt = true;
              temp_room = room;
              room = 99;
             
              
            }else{
              opt = false;

              room = temp_room;
              
            }
              break;
              
          case 'b':
          case 'B':
          
          
          if(room != 90){            
            if(!inBag){
              inBag = true;
              room = 91;
            }else{
              inBag = false;

              room = map.get_map_room();
            }
          }
          break;
            
              
            case 'x':
            case 'X':
              dmg(10,0,0);
              break;

      }
    }
  }
 
/*******************************************
movement part
********************************************/ 
  
  void keyReleased(){
    switch(keyCode){
      case 'a':
      case 'A':
          left = false;
          break;
        case 'd':
        case 'D':
          right = false;
          break;
        case 'w':
        case 'W':
          up = false;
          break;
        case 's':
        case 'S':
          down = false;
          break;
    }
  }
