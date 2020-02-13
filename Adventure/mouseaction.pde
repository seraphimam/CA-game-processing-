 public void mousePressed(){
    
    float x = mouseX;
    float y = mouseY;
    
    switch (room)
    {
        case 0:
        
                if( (x >= side_margin && x <= side_margin+200) && (y >= height_margin-60 && y <= height_margin) ){
                  clickcase = 1;
                }
                
                if( (x >= side_margin && x <= side_margin+200) && (y >= height_margin+140 && y <= height_margin+200) ){
                  clickcase = 2;
                }
                
                if( (x >= side_margin && x <= side_margin+200) && (y >= height_margin+340 && y <= height_margin+400) ){
                  exit();
                }
                    
        break;

//---------------------------------------------------------------------------------------        

        case 1:
        
                if(( x >= boxX && x<= boxX+boxwidth) && (y >= boxY && y <= boxY+boxheight/5)){
                  println("Reading job1 status");
                  playerdata(1);
                }
                
                if(( x >= boxX && x<= boxX+boxwidth) && (y >= boxY+boxheight/5 && y <= boxY+boxheight/5*2)){
                  println("Reading job2 status");
                  playerdata(2);
                }
                
                if(( x >= boxX && x<= boxX+boxwidth) && (y >= boxY+boxheight/5*2 && y <= boxY+boxheight/5*3)){
                  println("Reading job3 status");
                  playerdata(3);
                }
                
                if(( x >= boxX && x<= boxX+boxwidth) && (y >= boxY+boxheight/5*3 && y <= boxY+boxheight/5*4)){
                  println("Reading job4 status");
                  playerdata(4);
                }
                
                if(( x >= boxX && x<= boxX+boxwidth) && (y >= boxY+boxheight/5*4 && y <= boxY+boxheight)){
                  println("Reading job5 status");
                  playerdata(5);
                }
                
               
                
                
        
        break;
    
    } //close switch
    
  }  //close mousePressed()
  
  
  
  
  
  
  
