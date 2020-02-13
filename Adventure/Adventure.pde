import processing.core.PFont;  //calling font
import java.io.*;

 
  //these variable for reading text file and save date
  PrintWriter output;
  BufferedReader read;
  String[] profile;
  
  PFont font;
  
  protected float side_margin, height_margin;
  protected int clickcase = 0;
  protected boolean saved = false;
  int room = 0;
  int boxwidth,boxheight;
   int boxX,boxY;
  public void settings(){
    
    
         
    size(1600, 900);
    
    side_margin = width/2 - 60;
    
    height_margin = height/2;
  }  //close settings()
  
//----------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  public void setup(){
        
    frameRate(30);
    
    colorMode(HSB, 100);
    
    read = createReader("bin/characterdata/saveddata.txt");
    
    output = createWriter("bin/characterdata/saveddata.txt");
    
    try{
      output = createWriter("bin/characterdata/saveddata.txt");
    }catch(Exception e){
      System.out.println("SAVE FAILED");
    }
    
    try{
      profile = loadStrings("bin/characterdata/saveddata.txt");
    }catch(Exception e){
      text("LOAD FAILED", 100, 200);
    }
    
    
  }  //close setup()
  
//----------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  public void draw(){
    structureline();
    switch(room)
    {
    
      case 0:     
      
                  switch(clickcase)
                  {
                    
                            case 0:
                                  menu();
                                  break;
                            
                            case 1:
                                  newGame();
                                  break;
                            
                            case 2:
                                  load();
                                  break;                
                  }  //close switch(clickcase)
                  
                  if(saved){
                    text("No character detected, please start new game.", 220, 150);
                  }
      
        break;  //case 1 for main menu draw
    
      
      case 1:
      
      
      
      jobchoicestyle();
      
      break;
      
      
    
    }  //close switch for room
 
    
  }  //close draw()

  

  
  
  
  public void structureline()
  {
    int x,y;
    
    y=0;
    
    for (x=0;x<1600;x+=40)
    {
      line(x,y,x,y+900);
    }
    
    x=0;
    
    for (y =0;y<900;y+=45)
    {
      line (x,y,x+1600,y);
    }
    fill(255,100,100);
  }  // close structureline() for showing pixel 
