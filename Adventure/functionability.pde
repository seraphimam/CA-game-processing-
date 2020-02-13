 void newGame(){
    
     font = loadFont("main_font.vlw");
     textFont(font);
    
    room = 1;
    jobchoicestyle();   
  }  //close newGame()
  
  
  void load(){
    
    font = loadFont("main_font.vlw");
    textFont(font);
    
    if(profile.length != 0){
      for(int i = 0; i < profile.length; i++){
        text(profile[i], 300, 300);
      }
    }else{
      
      saved = true;
      clickcase = 0;
      
    }
  }  //close load()
