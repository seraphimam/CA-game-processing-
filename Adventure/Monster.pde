  /*******************************************
  Monster status setting
  ********************************************/ 
  


class Monster extends Units{
  private int type = 1;
  private String monster_type = "Normal";
  private String name;
  private int skillset = 0;

	public Monster(int t, int lv, int pa, int pd, int ma, int md, int mhp, int mmp, int sp){
    this.type = t;
		this.level = lv;
		this.patk = pa;
		this.pdef = pd;
		this.matk = ma;
		this.mdef = md;
		this.spd = sp;
		this.max_hp = mhp;
		this.max_mp = mmp;
		this.cur_hp = mhp;
		this.cur_mp = mmp;
	}
	
	public void calc_stats(){
		this.patk = patk + bonus_patk;
		this.pdef = pdef + bonus_pdef;
		this.matk = matk + bonus_matk;
		this.mdef = mdef + bonus_mdef;
		this.spd = spd + bonus_spd;
		this.max_hp = max_hp + bonus_hp;
		this.max_mp = max_mp + bonus_mp;
		this.cur_hp = max_hp - hp_dec + bonus_hp;
		this.cur_mp = max_mp - mp_dec + bonus_mp;
	}

  public void setType(int x){
    this.type = x;
  }
  
  public void setMonsterType(String s){
    this.monster_type = s;
  }
  
  public void setName(String s){
    this.name = s;
  }
  
  public String getName(){
    return this.name;
  }
  
  public int getType(){
    return this.type;
  }
  
  public String getMonsterType(){
    return this.monster_type;
  }
	
	/***********************
	*test print
	***********************/
	public void display_stats(){
		System.out.println("Monster status: ");
		System.out.println("LEVEL: " + this.level);
		System.out.println("HP: " + this.cur_hp);
		System.out.println("MP: " + this.cur_mp);
		System.out.println("MAXHP: " + this.max_hp);
		System.out.println("MAXMP: " + this.max_mp);
		System.out.println("PATK: " + this.patk);
		System.out.println("PDEF: " + this.pdef);
		System.out.println("MATK: " + this.matk);
		System.out.println("MDEF: " + this.mdef);
		System.out.println("SPD: " + this.spd);
	}
}
