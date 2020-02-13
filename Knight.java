public class Knight{
	private int patkAmp, pdefAmp, matkAmp, mdefAmp, spdAmp, hpAmp, mpAmp;
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