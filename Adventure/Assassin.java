public class Assassin{
	private int patkAmp, pdefAmp, matkAmp, mdefAmp, spdAmp, hpAmp, mpAmp;
	//Skill skill = new Skill(6);
	
	public Assassin(){
		patkAmp = 2;
		pdefAmp = 4;
		matkAmp = 1;
		mdefAmp = 3;
		spdAmp = 2;
		hpAmp = 5;
		mpAmp = 3;
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