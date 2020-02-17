/*******************************************************************
function about mouse, set variable first, all action base on room 
*********************************************************************/

 
 public void mousePressed(){
    
    float x = mouseX;
    float y = mouseY;
    
    switch (room)
    {
        case 0:  //  main menu
          
        
                if( (x >= side_margin && x <= side_margin+200) && (y >= height_margin-60 && y <= height_margin) ){
                  newGame();
                }
                
                if( (x >= side_margin && x <= side_margin+200) && (y >= height_margin+140 && y <= height_margin+200) ){
                  load();
                }
                
                if( (x >= side_margin && x <= side_margin+200) && (y >= height_margin+340 && y <= height_margin+400) ){
                  exit();
                }
                    
        break;

//---------------------------------------------------------------------------------------        

        case 1:  //  drawroom
                
                if(( x >= boxX && x<= boxX+boxwidth) && (y >= 0*60+boxY+40-12.5 && y <= 0*60+boxY+40+12.5)){
                  println("Reading job1 status");
                  p_class = 1;
                  drawmap(1);
                }
                
                if(( x >= boxX && x<= boxX+boxwidth) && (y >= 1*60+boxY+40-12.5 && y <= 1*60+boxY+40+12.5)){
                  println("Reading job2 status");
                  p_class = 2;
                  drawmap(1);
                }
                
                if(( x >= boxX && x<= boxX+boxwidth) && (y >= 2*60+boxY+40-12.5 && y <= 2*60+boxY+40+12.5)){
                  println("Reading job3 status");
                  p_class = 3;
                  drawmap(1);
                }
                
                if(( x >= boxX && x<= boxX+boxwidth) && (y >= 3*60+boxY+40-12.5 && y <= 3*60+boxY+40+12.5)){
                  println("Reading job4 status");
                  p_class = 4;
                  drawmap(1);
                }
                
                if(( x >= boxX && x<= boxX+boxwidth) && (y >= 4*60+boxY+40-12.5 && y <= 4*60+boxY+40+12.5)){
                  println("Reading job5 status");
                  p_class = 5;
                  drawmap(1);
                }
                
                if(( x >= boxX && x<= boxX+boxwidth) && (y >= 5*60+boxY+40-12.5 && y <= 5*60+boxY+40+12.5)){
                  println("Reading job6 status");
                  p_class = 6;
                  drawmap(1);
                }
                
               
                p[0] = new Player(p_class);
                p[0].set_img(p[0].job.name,1);
                p[0].set_loc(400,450);
                
        
        break;
        
 //---------------------------------------------------------------------------------------      
 /*******************************************
 */
       
       case 91:  //  item selct drop-down menu
            
            
              
      for(int i = 0; i < bag.row; i++){
      for(int j = 0; j < bag.col; j++)
      {
        float sqx = (j+1)*bag.hs + (j*bag.square_width) + (width + bag.UI_dis)/2;
        float sqy = (i+1)*bag.vs + (i * bag.square_height) + bag.vertical_margin;
        
          if(x >= sqx && x <= sqx + bag.square_width  && y >=  sqy && y <= sqy + bag.square_height)
          {
            if(bag.inv[i][j] > 0){
              bagoptX = mouseX+bag.hs;
              bagoptY = mouseY;
              room = 98;
            }
          }
      }
    }
            
            
       
           break;
       
       
       case 98:
           if((x >= bagoptX && x<= bagoptX+bag.square_width*3) && (y >= bagoptY && y <= bagoptY+bag.square_height)){
             
             println("used");
           
           }
           
           else if((x >= bagoptX && x<= bagoptX+bag.square_width*3) && (y > bagoptY + bag.square_height&& y <= bagoptY+bag.square_height * 2)){
             println("droped");
             
           }
           
           else{         
             room = 91;
           }
         
       
         break;
       
       
       case 99:  //  option menu
            
             if((x >= boxX && x <= boxX+boxwidth)&&(y >= mainY-text_height && y<= mainY+text_height)){ 
               opt = false;
               room = 0;               
                          
             }
             
             if((x >= boxX && x<=boxX+boxwidth) && (y >= saveY-text_height && y<= saveY+text_height)){
                              
               saveData();
             
             }
             
             if((x >= boxX && x <= boxX+boxwidth) && (y >= exitY-text_height && y<= exitY+text_height)){
               
               exit();
                        
             }
         
         break;
        
    } //close switch
    
  }  //close mousePressed()
  
  
  
  
  
  
  
