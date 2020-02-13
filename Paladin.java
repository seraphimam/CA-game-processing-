public class Paladin{
	private int patkAmp, pdefAmp, matkAmp, mdefAmp, spdAmp, hpAmp, mpAmp;
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