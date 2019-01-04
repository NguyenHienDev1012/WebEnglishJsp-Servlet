package BEAN;

public class Grammar {
	private int grammarid;
	private String grammarname;
	private String grammarimage;
	private String grammarcontent;
	public Grammar() {};
	public Grammar(int grammarid, String grammarname, String grammarimage, String grammarcontent) {
		this.grammarid = grammarid;
		this.grammarname = grammarname;
		this.grammarimage = grammarimage;
		this.grammarcontent = grammarcontent;
	}
	public int getGrammarid() {
		return grammarid;
	}
	public void setGrammarid(int grammarid) {
		this.grammarid = grammarid;
	}
	public String getGrammarname() {
		return grammarname;
	}
	public void setGrammarname(String grammarname) {
		this.grammarname = grammarname;
	}
	public String getGrammarimage() {
		return grammarimage;
	}
	public void setGrammarimage(String grammarimage) {
		this.grammarimage = grammarimage;
	}
	public String getGrammarcontent() {
		return grammarcontent;
	}
	public void setGrammarcontent(String grammarcontent) {
		this.grammarcontent = grammarcontent;
	}
	@Override
	public String toString() {
		return "Grammar [grammarid=" + grammarid + ", grammarname=" + grammarname + ", grammarimage=" + grammarimage
				+ ", grammarcontent=" + grammarcontent + "]";
	}
	
	

}
