class Player extends Units{
	protected int str = 1, con = 1, intel = 1, wis = 1, agi = 1, exp = 0;
	//Job job = new Job();
	
	public Player(){
	}
	
	public Player(int lv){
		this.level = lv;
	}
	
	public Player(int lv, int st, int co, int in, int wi, int ag){
		this.level = lv;
		this.str = st;
		this.con = co;
		this.intel = in;
		this.wis = wi;
		this.agi = ag;
	}
	
	//stats calculations
	public void calc_stats(){
		this.str = str + bonus_str;
		this.con = con + bonus_con;
		this.intel = intel + bonus_intel;
		this.wis = wis + bonus_wis;
		this.agi = agi + bonus_agi;
		this.patk = str * 2 + level + bonus_patk;
		this.pdef = con + level * 3 + bonus_pdef;
		this.matk = intel * 2 + level * 2 + bonus_matk;
		this.mdef = wis + level * 3 + bonus_mdef;
		this.spd = agi + level + bonus_spd;
		this.max_hp = con * 5 + level * 2 + bonus_hp;
		this.max_mp = wis * 3 + bonus_mp;
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
	
	public void inc_str(int a){
		this.bonus_str += a;
	}
	
	public void inc_con(int a){
		this.bonus_con += a;
	}
	
	public void inc_int(int a){
		this.bonus_intel += a;
	}
	
	public void inc_wis(int a){
		this.bonus_wis += a;
	}
	
	public void inc_agi(int a){
		this.bonus_agi += a;
	}
	
	//setters
	
	/*
	public void setJob(Job x){
		this.job = x;
	}
	*/
	
	public void set_exp(int x){
		this.exp = x;
	}
	
	public void set_str(int x){
		this.str = x;
	}
	
	public void set_con(int x){
		this.con = x;
	}
	
	public void set_intel(int x){
		this.intel = x;
	}
	
	public void set_wis(int x){
		this.wis = x;
	}
	
	public void set_agi(int x){
		this.agi = x;
	}
	
	/***************************
	*	Getters
	***************************/
	public int get_exp(){
		return this.exp;
	}
	
	public int get_str(){
		return this.str;
	}
	
	public int get_con(){
		return this.con;
	}
	
	public int get_intel(){
		return this.intel;
	}
	
	public int get_wis(){
		return this.wis;
	}
	
	public int get_agi(){
		return this.agi;
	}
	
	/***********************
	*test print
	***********************/
	public void display_stats(){
		System.out.println("Character status: ");
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
		System.out.println("PATK: " + this.patk);
		System.out.println("PDEF: " + this.pdef);
		System.out.println("MATK: " + this.matk);
		System.out.println("MDEF: " + this.mdef);
		System.out.println("SPD: " + this.spd);
	}
}
