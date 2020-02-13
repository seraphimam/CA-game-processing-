public class Mage{
	private int patkAmp, pdefAmp, matkAmp, mdefAmp, spdAmp, hpAmp, mpAmp;
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