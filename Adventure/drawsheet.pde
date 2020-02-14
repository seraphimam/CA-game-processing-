String [] options = {"Main Menu", "Save", "Quit"};
String[] job_list = {"Knight", "Priest", "Mage", "Paladin", "Ranger", "Assassin"};
int mainY, saveY, exitY, text_height;
int boxwidth,boxheight;
int boxX,boxY;
protected float side_margin, height_margin;

/*****************************************************************************************************************************************************************/

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

    text("Load Game", side_margin, height_margin+200);

    text("Exit", side_margin, height_margin+400);
 
    
  }  //close menu()
  
  void jobchoicestyle(){
    background(0);
   
    text_height =25;
    boxwidth = 240;
    boxheight = 360;
    
    boxX = (width-boxwidth)/2;
    boxY = (height-boxheight)/2;
    
    textSize(45);
    text("Please choose your job",boxX+boxwidth/2,50);
    
    fill(33,50);
    rect(boxX,boxY,boxwidth,boxheight,9);
    textAlign(CENTER);
    textSize(text_height);
    for(int i =0; i<6;i++)
    {
      fill(40,100);
      text(job_list[i],boxX+boxwidth/2,i*60+boxY+40);
      
    }
    
           
  }
  
  void option(){
    
    text_height = 40;
    
    fill(60, 100, 100, 60);
    rect(boxX,boxY,boxwidth,boxheight,30);
    
    fill(90, 80, 80, 80);
    textSize(text_height);
    textAlign(CENTER);
    for(int i =0; i<3;i++)
    {
      text(options[i],boxX+(boxwidth/2),boxY+i*(text_height+30)+boxheight/3);
    }
    
    mainY = boxY+boxheight/3;
    saveY = mainY + 70;
    exitY = saveY + 70;
  }
