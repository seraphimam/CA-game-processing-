 int p_class = 0;
 
/*****************************************************************************************************************************************************************/

 public void mousePressed(){
    
    float x = mouseX;
    float y = mouseY;
    
    switch (room) 
    {
        case 0:
          
        
                if( (x >= side_margin -60 && x <= side_margin+100) && (y >= height_margin-60 && y <= height_margin) ){
                  newGame();
                }
                
                if( (x >= side_margin -60 && x <= side_margin+100) && (y >= height_margin+140 && y <= height_margin+200) ){
                  load();
                }
                
                if( (x >= side_margin -60 && x <= side_margin+100) && (y >= height_margin+340 && y <= height_margin+400) ){
                  exit();
                }
                    
        break;

/*****************************************************************************************************************************************************************/    

        case 1:
                
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
                
               
                p = new Player(p_class);
                p.set_loc(400,450);
                
        
        break;
        
/*****************************************************************************************************************************************************************/
 
       case 99:
            
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
  
  
  
  
  
  
  
