class Skill{
  public int id, type, dmg_type;
  public String name, job_name;
  public int damage, mod, fix_dmg;
  
  public Skill(){
  }
  
  public int use(int user){
    calc_dmg(user);
    
    return this.damage;
  }
  
  public void calc_dmg(int user){
    if(user < 100){
      for(int i = 0; i < c_pt; i++){
        if(p[i].id == user){
          if(this.dmg_type == 1){
            this.damage = p[i].get_patk() * this.mod + fix_dmg;
          }else{
            this.damage = p[i].get_matk() * this.mod + fix_dmg;
          }
        }
      }
    }
    //monster skill damage calculation
    else{
      
    }
  }
}
