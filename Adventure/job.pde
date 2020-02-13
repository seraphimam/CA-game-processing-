public class Jobs{
  protected int patkAmp, pdefAmp, matkAmp, mdefAmp, spdAmp, hpAmp, mpAmp;
  
  public Jobs(){
    patkAmp = 1;
    pdefAmp = 1;
    matkAmp = 1;
    mdefAmp = 1;
    spdAmp = 1;
    hpAmp = 1;
    mpAmp = 1;
  }
  
  public int getPatkAmp(){
    return this.patkAmp;
  }
  public int getPdefAmp(){
    return this.pdefAmp;
  }
  public int getMatkAmp(){
    return this.matkAmp;
  }
  public int getMdefAmp(){
    return this.mdefAmp;
  }
  public int getSpdAmp(){
    return this.spdAmp;
  }
  public int getHpAmp(){
    return this.hpAmp;
  }
  public int getMpAmp(){
    return this.mpAmp;
  }
}



class Job{
  private String name;
  private int[] amplifier = new int[7];
  private int code = 0;

  public Job(){
  }
  
  public Job(int x){
    this.code = x;
    
    switch(code){
      case 1:
        this.name = "Knight";
        Knight knight = new Knight();
        init_Knight(knight);
        break;
      
      case 2:
        this.name = "Priest";
        Priest priest = new Priest();
        init_Priest(priest);
        break;
        
      case 3:
        this.name = "Mage";
        Mage mage = new Mage();
        init_Mage(mage);
        break;
        
      case 4:
        this.name = "Paladin";
        Paladin paladin = new Paladin();
        init_Paladin(paladin);
        break;
        
      case 5:
        this.name = "Ranger";
        Ranger ranger = new Ranger();
        init_Ranger(ranger);
        break;
        
      case 6:
        this.name = "Assassin";
        Assassin assassin = new Assassin();
        init_Assassin(assassin);
        break;
    }
  }
  
  public void init_Knight(Knight k){
    amplifier[0] = k.getPatkAmp();
    amplifier[1] = k.getPdefAmp();
    amplifier[2] = k.getMatkAmp();
    amplifier[3] = k.getMdefAmp();
    amplifier[4] = k.getSpdAmp();
    amplifier[5] = k.getHpAmp();
    amplifier[6] = k.getMpAmp();
  }

  public void init_Priest(Priest k){
    amplifier[0] = k.getPatkAmp();
    amplifier[1] = k.getPdefAmp();
    amplifier[2] = k.getMatkAmp();
    amplifier[3] = k.getMdefAmp();
    amplifier[4] = k.getSpdAmp();
    amplifier[5] = k.getHpAmp();
    amplifier[6] = k.getMpAmp();
  }
  
  public void init_Mage(Mage k){
    amplifier[0] = k.getPatkAmp();
    amplifier[1] = k.getPdefAmp();
    amplifier[2] = k.getMatkAmp();
    amplifier[3] = k.getMdefAmp();
    amplifier[4] = k.getSpdAmp();
    amplifier[5] = k.getHpAmp();
    amplifier[6] = k.getMpAmp();
  }
  
  public void init_Paladin(Paladin k){
    amplifier[0] = k.getPatkAmp();
    amplifier[1] = k.getPdefAmp();
    amplifier[2] = k.getMatkAmp();
    amplifier[3] = k.getMdefAmp();
    amplifier[4] = k.getSpdAmp();
    amplifier[5] = k.getHpAmp();
    amplifier[6] = k.getMpAmp();
  }
  
  public void init_Ranger(Ranger k){
    amplifier[0] = k.getPatkAmp();
    amplifier[1] = k.getPdefAmp();
    amplifier[2] = k.getMatkAmp();
    amplifier[3] = k.getMdefAmp();
    amplifier[4] = k.getSpdAmp();
    amplifier[5] = k.getHpAmp();
    amplifier[6] = k.getMpAmp();
  }
  
  public void init_Assassin(Assassin k){
    amplifier[0] = k.getPatkAmp();
    amplifier[1] = k.getPdefAmp();
    amplifier[2] = k.getMatkAmp();
    amplifier[3] = k.getMdefAmp();
    amplifier[4] = k.getSpdAmp();
    amplifier[5] = k.getHpAmp();
    amplifier[6] = k.getMpAmp();
  }
}


public class Knight extends Jobs{
  //Skill skill = new Skill(1);
  
  public Knight(){
    patkAmp = 3;
    pdefAmp = 4;
    matkAmp = 1;
    mdefAmp = 3;
    spdAmp = 3;
    hpAmp = 5;
    mpAmp = 3;
  }
}

  public class Mage extends Jobs{
  //Skill skill = new Skill(3);
  
  public Mage(){
    patkAmp = 1;
    pdefAmp = 1;
    matkAmp = 6;
    mdefAmp = 3;
    spdAmp = 2;
    hpAmp = 3;
    mpAmp = 4;
  }
}

public class Paladin extends Jobs{
  //Skill skill = new Skill(4);
  
  public Paladin(){
    patkAmp = 2;
    pdefAmp = 3;
    matkAmp = 2;
    mdefAmp = 4;
    spdAmp = 2;
    hpAmp = 5;
    mpAmp = 4;
  }
}

public class Priest extends Jobs{
  //Skill skill = new Skill(2);
  
  public Priest(){
    patkAmp = 1;
    pdefAmp = 2;
    matkAmp = 2;
    mdefAmp = 4;
    spdAmp = 2;
    hpAmp = 4;
    mpAmp = 5;
  }
}

public class Ranger extends Jobs{
  //Skill skill = new Skill(5);
  
  public Ranger(){
    patkAmp = 3;
    pdefAmp = 2;
    matkAmp = 2;
    mdefAmp = 2;
    spdAmp = 4;
    hpAmp = 5;
    mpAmp = 3;
  }
}

public class Assassin extends Jobs{
  //Skill skill = new Skill(5);
  
  public Assassin(){
    patkAmp = 4;
    pdefAmp = 1;
    matkAmp = 3;
    mdefAmp = 2;
    spdAmp = 5;
    hpAmp = 2;
    mpAmp = 2;
  }
}
