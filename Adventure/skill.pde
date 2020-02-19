boolean doubled = false;

class Skill{
  protected int id, type, dmg_type;
  protected String name, job_name;
  protected float damage, mod, fix_dmg,last_damage,heal;
  protected float fix_rate = 1;
  public int left_round = 0;
  float[] temp_data = new float[10];
}


/*
    type:
      1: patk
      2: matk
      3: atk buff
      4: def buff 
      5: status buff
      6: heal
      

*/

class Knight_skill_list extends Skill{
    
    int left_round;
    
    public void skill1(){
       this.type = 1;
       
       this.mod = 1.25;
       
       this.dmg_type = 1;
       
       this.damage = p[0].get_patk() * mod;    
         
  }
    
    public void skill2(){
        
        this.type = 4;
        
        this.mod = 1.5;
        
        this.left_round = 4;
        
        temp_data[6] = p[0].get_pdef();
        
        temp_data[8] = p[0].get_mdef();
        
        p[0].bonus_pdef *= this.mod;
        
        p[0].bonus_mdef *= (this.mod + 0.5);
    }
    
    public void skill3(){
      
      this.type = 1;
      
      this.mod = 1.8;
      
      this.damage = p[0].get_patk() * this.mod;
    }
    
    public void skill4(){
    
    
    }
    
    public void skill5(){
      
      
      
  
}
    
    public void skill6(){
      
      this.type = 1;
      
      this.left_round = 3;
     
      this.mod = 1.2;
    
      this.last_damage = p[0].get_patk() * 0.2;
      
      this.damage = p[0].get_patk() * this.mod;
    }

}

class Paladin_skill_list extends Skill{
    
    public void skill1(){
      
      this.type = 2;
      
      this.mod = 1.25;
      
      this.damage = p[0].get_matk() * this.mod;
    }
    
    public void skill2(){
      
      this.type = 1;
      
      this.mod = 1.2;
      
      this.damage = p[0].get_patk() * this.mod;
      
      //stun havent added
    }
    
    public void skill3(){
      
      this.type = 4;
      
      //death = false;
    
    }
    
    public void skill4(){
      
      this.type = 2;
      
      this.mod = 1.2;
      
      this.damage = p[0].get_matk() * this.mod;
    
    }
    
    public void skill5(){
      
      this.left_round = 3;
      
      this.damage = p[0].max_hp * 0.3;
      
      //this.heal = p[0].max_hp * 0.2;
    }
    
    public void skill6(){
      this.type = 2;
      
      this.left_round = 2;
      
      this.mod = 1.5;
      
      this.last_damage = p[0].get_matk() * 0.8 ;
      
      
      /*  increase enemy status.
      
      
      temp_data[6] = ;
      
      temp_data[8] = ;
      
      p[0].bonus_pdef = temp_data[6] * this.mod;
        
      p[0].bonus_mdef = temp_data[8] * (this.mod + 0.5);
      
      */
    }

}

class Ranger_skill_list extends Skill{
    
    public void skill1(){
      
      this.type = 1;
      
      this.mod = 1.4;
      
      this.damage = p[0].get_patk() * this.mod;
      
    }
    
    public void skill2(){
      
      this.type = 2;
      
      this.mod = 1.4;
      
      this.damage = p[0].get_patk() * this.mod;
    
    }
    
    public void skill3(){
      
      this.type = 3;
      
      this.left_round = 3;
      
      temp_data[0] = p[0].bonus_patk;
      
      temp_data[2] = p[0].bonus_matk;
      
      p[0].bonus_patk = p[0].bonus_patk + p[0].bonus_matk;
      
    }
    
    public void skill4(){
      
      this.type = 1;
      
      this.mod = 1.8;
      
      this.damage = p[0].get_patk() * this.mod;           
    }
    
    public void skill5(){
      this.type = 2;
      
      this.mod = 1.8;
      
      this.damage = p[0].get_matk() * this.mod;
    
    }
    
    public void skill6(){
      this.type = 1;
      
      this.mod = 1.3;
      
      this.damage = (p[0].get_matk()+p[0].get_patk())*this.mod;
      
    /*
    stun : boss 30 elimet: 60 nomal :80
    if()
    {
      
    }
    */
    
    }

}

class Assassin_skill_list extends Skill{
    
    public void skill1(){
      
      this.type = 1;
      
      this.mod = 1.4;
      
      this.damage = p[0].get_patk() * this.mod;
      
    }
    
    public void skill2(){
      
      this.type = 1;
      
      this.mod = 1.8;
      
      this.damage = p[0].get_patk() * this.mod;
    
    }
    
    public void skill3(){
      
      this.type = 3;
      
      this.mod = 1.4;
      
      this.left_round = 1;
      
      temp_data[4] = p[0].bonus_agi;
      
      p[0].bonus_agi *= this.mod;
    
    }
    
    public void skill4(){
      this.type = 1;
      
      this.mod = 1.2;
      
      this.left_round = 4;
      
      this.damage = p[0].get_patk() * this.mod;
      
      this.last_damage = p[0].get_patk() * 0.2;
    
    }
    
    public void skill5(){
      
      this.type = 3;
      
      this.mod = 1.25;
      
      this.left_round =1;
      
      temp_data[5] = p[0].bonus_patk;
      
      p[0].bonus_patk *= this.mod;
      
    }
    
    public void skill6(){
      
      this.type = 1;
      
      this.mod = 2.2;
      
      this.damage = p[0].get_patk() * this.mod;
          
    }

}

class Mage_skill_list extends Skill{
    
    public void skill1(){
      
      this.type = 2;
      
      this.mod = 1.4;
      
      this.damage = p[0].get_matk() * this.mod;
    
    }
    
    public void skill2(){
      
      // to all
      this.type = 2;
      
      this.mod = 1.3;
      
      this.damage = p[0].get_matk() * this.mod;
    
    }
    
    public void skill3(){
      
      this.type = 4;
      
      this.left_round = 2;
      
      this.heal = p[0].max_mp * 0.2;
      
      // damage = 0.7
    
    }
    
    public void skill4(){
      
      this.type = 3;
      
      this.left_round = 3;
      
      //this.heal = heal enemy
      
      //stun boss 40
    
    }
    
    public void skill5(){
      
      this.type = 2;
      
      this.mod = 1.6;

      
      if(doubled)
      {
        this.mod = 2;
      }
      
      else{
        doubled = true;
      }
      
      this.damage = p[0].get_matk() * this.mod; 
      
      //after damaged reset doubled as false
      
    }
    
    public void skill6(){
      this.type = 2;
      
      this.mod = 1.6;
      
      this.damage = p[0].get_matk() * this.mod;
    
    }

}

class Priest_skill_list extends Skill{
    
    public void skill1(){
      this.type = 2;
      this.mod = 1.3;
      
      this.damage = p[0].get_matk() * this.mod;
    
    }
    
    public void skill2(){
      this.type = 6;
      
      this.heal = p[0].get_matk();
    }
    
    public void skill3(){
      
      this.type = 5;
      
      this.left_round = 4;
      
      this.mod = 1.2;
      
      temp_data[0] = p[0].bonus_str;
      
      temp_data[1] = p[0].bonus_con;
      
      temp_data[2] = p[0].bonus_intel;
      
      temp_data[3] = p[0].bonus_wis;
      
      temp_data[4] = p[0].bonus_agi;
      
      p[0].bonus_str *= this.mod;
      
      p[0].bonus_con *= this.mod;
      
      p[0].bonus_intel *= this.mod;
      
      p[0].bonus_wis *= this.mod;
      
      p[0].bonus_agi *= this.mod;
      
    }
    
    public void skill4(){
      
      this.type = 6;
      
      this.mod = 0.8;      
            
      this.heal = p[0].matk * this.mod;
      
    }
    
    public void skill5(){
      
      this.type = 5;
      
      this.left_round = 4;
      
      this.mod = 1.15;
      
      temp_data[0] = p[0].bonus_str;
      
      temp_data[1] = p[0].bonus_con;
      
      temp_data[2] = p[0].bonus_intel;
      
      temp_data[3] = p[0].bonus_wis;
      
      temp_data[4] = p[0].bonus_agi;
      
      p[0].bonus_str *= this.mod;
      
      p[0].bonus_con *= this.mod;
      
      p[0].bonus_intel *= this.mod;
      
      p[0].bonus_wis *= this.mod;
      
      p[0].bonus_agi *= this.mod;
    
    }
    
    public void skill6(){
      
      this.type = 6;      
      
      p[0].cur_hp = p[0].max_hp;
      
      p[0].cur_hp = p[0].max_mp;
    
    }

}
