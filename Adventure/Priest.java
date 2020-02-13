public class Priest{
	private int patkAmp, pdefAmp, matkAmp, mdefAmp, spdAmp, hpAmp, mpAmp;
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