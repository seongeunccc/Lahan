package kr.hotel.lahan.dto;

public class ProductDto {
	
	String proId; //제품 아이디
	String proName; // 제품 명
	String proTitle; // 제품 설명시 제목
	String proScript;  // 제품 설명 내용
	int proQuant; // 제품수량ㅅ
	int proPrice; // 제품 가격
	int proPriceDis; // 제품 할인 가격	
	String proFile; //제품 사진 경로
	String proCate; // 제품 카테고리
	
	
	public String getProId() {
		return proId;
	}
	public void setProId(String proId) {
		this.proId = proId;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getProTitle() {
		return proTitle;
	}
	public void setProTitle(String proTitle) {
		this.proTitle = proTitle;
	}
	public String getProScript() {
		return proScript;
	}
	public void setProScript(String proScript) {
		this.proScript = proScript;
	}
	public int getProQuant() {
		return proQuant;
	}
	public void setProQuant(int proQuant) {
		this.proQuant = proQuant;
	}
	public int getProPrice() {
		return proPrice;
	}
	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
	}
	public int getProPriceDis() {
		return proPriceDis;
	}
	public void setProPriceDis(int proPriceDis) {
		this.proPriceDis = proPriceDis;
	}
	public String getProFile() {
		return proFile;
	}
	public void setProFile(String proFile) {
		this.proFile = proFile;
	}
	public String getProCate() {
		return proCate;
	}
	public void setProCate(String proCate) {
		this.proCate = proCate;
	}

}
