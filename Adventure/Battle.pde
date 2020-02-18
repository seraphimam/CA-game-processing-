/*******************************************
 have battle with monster
********************************************/

boolean dodge = false;
boolean inBattle = false;
int battle_UI_margin = 10;
int max_pt = 4, c_pt = 1;
float c_width = (width - battle_UI_margin * 5)/4, c_height = height/3 - 2 * battle_UI_margin;
float cx, cy = height*2/3 + battle_UI_margin;

/*******************************************
 calculation damage
********************************************/

void dmg(int x, int rec, int rec_type){
  if(rec_type == 0){
    p[rec].dec_hp(x);
    p[rec].calc_stats();
  }else{
    //m[rec].dec_hp(x);
    //m[rec].calc_stats();
  }
}


void attack(int attacker, int defender, int def_type){
  
  int damage = p[attacker].get_patk() - p[defender].get_pdef();
  
    dodge = false;
  
   if_dodge(attacker,defender);
  
  
  if(dodge){
    
    damage = 0;
    
    dmg(damage, defender, def_type);

}
  /*
  
   
  */
  
  else{
  
    dmg(damage, defender, def_type);
  
  }
  
  
  
}



void skill_attack(int attacker, int defender, int def_type, int skill_id){
  int damage = p[attacker].get_patk() - p[defender].get_pdef();
  
  dmg(damage, defender, def_type);
}

void attackanimation(int attacker, int defender){
  //int attacker_X = p[attacker].;
  //int defender_X = p[defender].;


}

void escape(){
  
    int escape = r.nextInt(100);
    
    
    
    if(escape >= 60){
      
    inBattle = false;

    room = map.get_map_room();
    

    
    }
    
    else{

    println("escape fail");
    
    }
      
}

boolean if_dodge(int attacker,int defender){
    
     if((2*p[defender].get_agi())-p[attacker].get_agi() < 0){
       
       int dodge_rate = r.nextInt(20) + (p[defender].get_agi()-p[attacker].get_agi())/p[defender].get_agi();
       
        if(dodge_rate >= 50)
        {
        
          dodge = true;
        
        }
        else{
        
          dodge = false;
        }
     }
     
  
    return dodge;

}
