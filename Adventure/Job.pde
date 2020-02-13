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
