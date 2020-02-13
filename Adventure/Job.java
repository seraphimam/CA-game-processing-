public class Job{
	private String name;
	private int[7] amplifier;
	private int code = 0;

	public Job(){
	}
	
	public Job(int x){
		this.code = x;
		
		switch(code){
			case 1:
				this.name = "Knight";
				Knight knight = new Knight();
				break;
			
			case 2:
				this.name = "Priest";
				Priest priest = new Priest();
				break;
				
			case 3:
				this.name = "Mage";
				Mage mage = new Mage();
				break;
				
			case 4:
				this.name = "Paladin";
				Paladin paladin = new Paladin();
				break;
				
			case 5:
				this.name = "Ranger";
				Ranger ranger = new Ranger();
				break;
				
			case 6:
				this.name = "Assassin";
				Assassin assassin = new Assassin();
				break;
		}
	}
	
	public init_knight(){
		amplifier[0] = knight.getPatkAmp();
		amplifier[1] = knight.getPdefAmp();
		amplifier[2] = knight.getMatkAmp();
		amplifier[3] = knight.getMdefAmp();
		amplifier[4] = knight.getSpdAmp();
		amplifier[5] = knight.getHpAmp();
		amplifier[6] = knight.getMpAmp();
	}
}