
  /***********************
  set player data
  ***********************/


class Player extends Units{
	protected float str = 1, con = 1, intel = 1, wis = 1, agi = 1;
  protected int exp = 0;
  public final int type = 0;
	Job job;
	
	public Player(){
	}

	public Player(int x){
		job = new Job(x);
    init_stats();
    calc_stats();
	}

	public Player(int x, int lv, float st, float co, float in, float wi, float ag){
    job = new Job(x);
		this.level = lv;
		this.str = st;
		this.con = co;
		this.intel = in;
		this.wis = wi;
		this.agi = ag;
	}

  public void init_stats(){
    this.str = job.stats[0];
    this.con = job.stats[0];
    this.intel = job.stats[0];
    this.wis = job.stats[0];
    this.agi = job.stats[0];
  }
	
	//stats calculations
	public void calc_stats(){
		this.str = str + bonus_str;
		this.con = con + bonus_con;
		this.intel = intel + bonus_intel;
		this.wis = wis + bonus_wis;
		this.agi = agi + bonus_agi;

		this.patk = str * job.amplifier[0] + level + bonus_patk;
		this.pdef = con * job.amplifier[1]  + level * 3 + bonus_pdef;
		this.matk = intel * job.amplifier[2]  + level * 2 + bonus_matk;
		this.mdef = wis * job.amplifier[3] + level * 3 + bonus_mdef;
		this.spd = agi * job.amplifier[4] + level + bonus_spd;
		this.max_hp = con * job.amplifier[5]  + level * 2 + bonus_hp;
		this.max_mp = wis * job.amplifier[6]  + bonus_mp;

		this.cur_hp = max_hp - hp_dec + bonus_hp;
		this.cur_mp = max_mp - mp_dec + bonus_mp;
	}
	
	//temporary stats increments for equipments and buffs
	public void levelUp(){
		this.level++;
	}
	
	public void gainExp(int ex){
		this.exp += ex;
	}
	
	public void inc_str(float a){
		this.bonus_str += a;
	}
	
	public void inc_con(float a){
		this.bonus_con += a;
	}
	
	public void inc_int(float a){
		this.bonus_intel += a;
	}
	
	public void inc_wis(float a){
		this.bonus_wis += a;
	}
	
	public void inc_agi(float a){
		this.bonus_agi += a;
	}
	
	//setters
	
	public void set_exp(int x){
		this.exp = x;
	}
	
	public void set_str(float x){
		this.str = x;
	}
	
	public void set_con(float x){
		this.con = x;
	}
	
	public void set_intel(float x){
		this.intel = x;
	}
	
	public void set_wis(float x){
		this.wis = x;
	}
	
	public void set_agi(float x){
		this.agi = x;
	}
	
	/***************************
	*	Getters
	***************************/
	public int get_exp(){
		return this.exp;
	}
	
	public float get_str(){
		return this.str;
	}
	
	public float get_con(){
		return this.con;
	}
	
	public float get_intel(){
		return this.intel;
	}
	
	public float get_wis(){
		return this.wis;
	}
	
	public float get_agi(){
		return this.agi;
	}
	
	/***********************
	*test print
	***********************/
	public void display_stats(){
		System.out.println("Character status: ");
    System.out.println("Job: " + this.job.name);
		System.out.println("LEVEL: " + this.level);
		System.out.println("EXP: " + this.exp);
		System.out.println("STR: " + this.str);
		System.out.println("CON: " + this.con);
		System.out.println("INT: " + this.intel);
		System.out.println("WIS: " + this.wis);
		System.out.println("AGI: " + this.agi);
		System.out.println("HP: " + this.cur_hp);
		System.out.println("MP: " + this.cur_mp);
		System.out.println("MAXHP: " + this.max_hp);
		System.out.println("MAXMP: " + this.max_mp);
    System.out.println("CURHP: " + this.max_hp);
    System.out.println("CURMP: " + this.max_mp);
		System.out.println("PATK: " + this.patk);
		System.out.println("PDEF: " + this.pdef);
		System.out.println("MATK: " + this.matk);
		System.out.println("MDEF: " + this.mdef);
		System.out.println("SPD: " + this.spd);
	}

  
}
