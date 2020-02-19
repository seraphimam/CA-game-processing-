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

void dmg(float x, int rec, int rec_type){
  if(rec_type == 0){
    p[rec].dec_hp(x);
    p[rec].calc_stats();
  }else{
    //m[rec].dec_hp(x);
    //m[rec].calc_stats();
  }
}


void attack(int attacker, int defender, int def_type){
  
  float damage = p[attacker].get_patk() - p[defender].get_pdef();
  
    dodge = false;
  
   if_dodge(attacker,defender, (def_type + 1)% 2);
  
  
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
  float damage = p[attacker].get_patk() - p[defender].get_pdef();
  
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

void if_dodge(int attacker,int defender, int attacker_type){
    
       
       float dodge_rate;
       
       if(attacker_type == 1){
         dodge_rate = (m[defender].get_spd()-p[attacker].get_spd())/m[defender].get_spd();
       }else{
         dodge_rate = (p[defender].get_spd()-m[attacker].get_spd())/p[defender].get_spd();
       }
       
        if(r.nextInt(10000) < dodge_rate * 10000)
        {
        
          dodge = true;
        
        }else{
          dodge = false;
        }
     
  

}
