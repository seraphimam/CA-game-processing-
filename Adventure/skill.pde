boolean doubled = false;

class Skill{
  protected int id, type, dmg_type;
  protected String name, job_name;
  protected float damage, mod, fix_dmg,last_damage,heal;
  protected float fix_rate = 1;
  public int left_round = 0;
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
    
    public void skill2(int round){
        
        this.type = 4;
        
        this.mod = 1.5;
        
        this.left_round = round;
        
        if(this.left_round > 0){
          this.mod = 1.5;
        }
        
        else if(this.left_round == 0){
          this.mod = 1.0;          
        }
        
        p[0].pdef = p[0].bonus_pdef * this.mod;
        
        p[0].mdef = p[0].bonus_mdef * this.mod;
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
    
    public void skill6(int round){
      
      this.type = 1;
      
      this.left_round = round;
          
      if(this.left_round > 0){
          this.last_damage = p[0].get_patk() * 0.2;
        }
        
        else if(this.left_round == 0){
          this.last_damage = 0;        
        }
        
        else if(this.left_round == 4)
        {
          this.damage = p[0].get_patk() * this.mod;        
        }
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
    
    public void skill5(int round){
      
      this.left_round = round;
      
      
      if(this.left_round > 0) {
        
        this.heal = p[0].max_hp * 0.2;       
      
    }
      
      if(this.left_round == 3){     
        this.damage = p[0].max_hp * 0.3;
      }
          
    }
    
    
    public void skill6(int round){
      this.type = 2;
      
      this.left_round = round;
      
      this.mod = 1.5;
      
      this.last_damage = p[0].get_matk() * 0.8 ;
      
      if(left_round > 0)
      {
        this.mod = 1.5; 
      }
      
      else{
        this.mod = 1.0;  
      }
      
      m[0].pdef = m[0].bonus_pdef * this.mod;
        
      m[0].mdef = m[0].bonus_mdef * this.mod;
      
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
    
    public void skill3(int round){
      
      this.type = 3;
      
      this.left_round = round;
      
      if(left_round > 0)
      {       
            p[0].patk = p[0].get_patk() + p[0].get_matk();
            p[0].matk = p[0].patk;
      }
      
      else{
            p[0].patk = p[0].bonus_patk;
            p[0].matk = p[0].bonus_matk; 
      }      
            
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
    AOE
    
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
    
    public void skill3(int round){
      
      this.type = 3;
      
      this.left_round = round;
      
      if(this.left_round > 0)
      {
        this.mod = 1.4;
        
      }
      
      else{
        this.mod = 1.0;
      }
      
      p[0].agi = p[0].bonus_agi * this.mod;
    
    }
    
    public void skill4(int round){
      this.type = 1;
      
      this.mod = 1.2;
      
      this.left_round = round;
      
      if(this.left_round == 4)
      {
          this.damage = p[0].get_patk() * this.mod;
          // AOE        
      }
      
      else if(this.left_round == 0)
      {
        this.last_damage = 0;
      }
      
      else{
      
      this.last_damage = p[0].get_patk() * 0.2;
      
      }
      
      
      
      
    
    }
    
    public void skill5(int round){
      
      this.type = 3;
         
      this.left_round = round;
      
      if(this.left_round >0)
      {
        this.mod = 1.25;
      }
      
      else{
        this.mod = 1.0;
      }
      
      p[0].patk = p[0].bonus_patk * this.mod;
      
    
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
    
    public void skill3(int round){
      
      this.type = 4;
      
      this.left_round = round;
      
      if(this.left_round > 0)
      {
        this.mod = 1.3;
        
        
        this.heal = p[0].max_mp * 0.2;        
      }
      
      else {       
        this.heal = 0;
        
        this.mod = 1.0;
      }
      
        p[0].pdef = p[0].get_pdef() * this.mod;
        
        p[0].mdef = p[0].get_mdef() * this.mod; 
        
        p[0].cur_mp += this.heal ; 
    }
    
    public void skill4(int round){
      
      this.type = 3;
      
      this.left_round = round;
      
      
      if(this.left_round > 0)
      {
        //stun enemy.....boss 40%
        
        this.heal = m[0].max_hp * 0.2;
      }
      
      else{
      
        this.heal = 0;
      }
      
      m[0].cur_hp += this.heal;
      
      
    
    }
    
    public void skill5(){
      
      this.type = 2;
          
      if(doubled)
      {
        doubled = false;
        this.mod = 2;
      }
      
      else{
        doubled = true;
        this.mod = 1.6;
      }
      
      this.damage = p[0].get_matk() * this.mod; 
      
      //after damaged reset doubled as false
      
    }
    
    public void skill6(){
      
      //AOE
      
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
    
    public void skill3(int round){
      
      this.type = 5;
      
      this.left_round = round;
      
      this.mod = 1.2;
      
      if(round > 0)
      {
        this.mod = 1.2;
      }
      
      else
      {  
        this.mod = 1.0;
      }
      
       p[0].str = p[0].bonus_str * this.mod;
       p[0].con = p[0].bonus_con * this.mod;
       p[0].intel = p[0].bonus_intel * this.mod;
       p[0].wis = p[0].bonus_wis * this.mod;
       p[0].agi = p[0].bonus_agi * this.mod;
      
    }
    
    public void skill4(){
      
      this.type = 6;
      
      this.mod = 0.8;      
            
      this.heal = p[0].matk * this.mod;
      
    }
    
    public void skill5(int round){
      //AOE
      
      this.type = 5;
      
      this.left_round = round;
      
      if(round > 0)
      {
        this.mod = 1.15;
      }
      
      else
      {  
        this.mod = 1.0;
      }
      
       p[0].str = p[0].bonus_str * this.mod;
       p[0].con = p[0].bonus_con * this.mod;
       p[0].intel = p[0].bonus_intel * this.mod;
       p[0].wis = p[0].bonus_wis * this.mod;
       p[0].agi = p[0].bonus_agi * this.mod;
      
    
    }
    
    public void skill6(){
      
      this.type = 6;      
      
      p[0].cur_hp = p[0].max_hp;
      
      p[0].cur_hp = p[0].max_mp;
      
      p[0].cur_mp = 0;
    }
}
