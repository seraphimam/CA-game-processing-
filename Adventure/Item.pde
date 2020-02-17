Item[] items = new Item[item_count];

class Item{
  protected int str = 0, con = 0, intel = 0, wis = 0, agi = 0, patk = 0, pdef = 0, matk = 0, mdef = 0, spd = 0, hp = 0, mp = 0;
  protected String type = "Item";
  
  public Item(){
    
  }
  
  /******************
  Setter
  ******************/
  
  
  public void set_type(String s){
    this.type = s;
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
  
  public void set_patk(int x){
    this.patk = x;
  }
  
  public void set_pdef(int x){
    this.pdef = x;
  }
  
  public void set_matk(int x){
    this.matk = x;
  }
  
  public void set_mdef(int x){
    this.mdef = x;
  }
  
  public void set_spd(int x){
    this.spd = x;
  }
  
  public void set_max_hp(int x){
    this.hp = x;
  }
  
  public void set_max_mp(int x){
    this.mp = x;
  }
  
  
  /**********************************
    Getters
  **********************************/
  
  
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
  
  public int get_patk(){
    return this.patk;
  }
  
  public int get_pdef(){
    return this.pdef;
  }
  
  public int get_matk(){
    return this.matk;
  }
  
  public int get_mdef(){
    return this.mdef;
  }
  
  public int get_spd(){
    return this.spd;
  }
  
  public int get_hp(){
    return this.hp;
  }
  
  public int get_mp(){
    return this.mp;
  }
}
