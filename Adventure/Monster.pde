
  /*******************************************
  Monster status setting
  ********************************************/ 



class Monster extends Units{
  protected String monster_type = "Normal";
  protected String name;
  protected int skillset = 0;
  protected float mod = 1.0;
  
  public Monster(){
  }
  
  public Monster(int t){
    this.type = t;
  }
  
	public Monster(int t, int lv){
    this.type = t;
		this.level = lv;
  
    init_stats();
	}

  
  public void init_stats(){
    switch(type){
      case 1:
        this.monster_type = "Normal";
        this.mod = 1.0;
        this.img = loadImage("src/monster/normal/n1.png");
        break;
      
      case 2:
        this.monster_type = "Elite";
        this.mod = 1.5;
        this.img = loadImage("src/monster/elite/e1.png");
        break;
      
      case 3:
        this.monster_type = "Boss";
        this.mod = 2.0;
        this.img = loadImage("src/monster/boss/b1.png");
        break;
      
    }
    
    this.patk = (level * 10) * mod;
    this.pdef = (level * 10) * mod;
    this.matk = (level * 10) * mod;
    this.mdef = (level * 10) * mod;
    this.spd = (level * 10) * mod;
    this.max_hp = (level * 10) * mod;
    this.max_mp = (level * 10) * mod;
    this.cur_hp = (level * 10) * mod;
    this.cur_mp = (level * 10) * mod;
    
    
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
