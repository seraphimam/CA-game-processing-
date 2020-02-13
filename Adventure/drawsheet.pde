public void menu(){
  
    font = loadFont("menu_font.vlw");
    
    textFont(font);
    
  //should be replaced by image
    background(0);
  //
  
    textSize(60);
    text("Game Title",side_margin,height_margin/2);
                                  
    textSize(30);
    text("New Game", side_margin, height_margin);
                                  
    textSize(30);
    text("Load Game", side_margin, height_margin+200);
                                  
    textSize(30);
    text("Exit", side_margin, height_margin+400);
 
    
  }  //close menu()
  
  void jobchoicestyle(){
    background(0);
   
    boxwidth = 240;
    boxheight = 360;
    
    boxX = (width-boxwidth)/2;
    boxY = (height-boxheight)/2;
    
    textSize(25);
    text("Please choose your job",20,50);
    
    fill(33,50);
    rect(boxX,boxY,boxwidth,boxheight,9);
    
    for(int i =0; i<5;i++)
    {
      fill(30,100);
      text("This is job"+(i+1),boxX,i*70+330);
      
    }
    
           
  }
