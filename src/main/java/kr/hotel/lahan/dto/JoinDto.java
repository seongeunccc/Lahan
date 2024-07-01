package kr.hotel.lahan.dto;

public class JoinDto {
	
	String id;
	String pw;
	String name;
	String en_name;
	int birth;
	String phone;
	String email;
	String adrs;
	String agreeEmail;
	String recomId;
	String proCode;
//	String membership;
//	int point;
//	Date joindate;
//	Date withdraw;
	
	public JoinDto() {
	}
	
	public JoinDto(String id, String pw, String name, String en_name, int birth, String phone, 
			String email, String adrs, String agreeEmail, String recomId, String proCode) {
		this.id = id;
		this.pw = pw;
		this.name=name;
		this.en_name=en_name;
		this.birth = birth;
		this.phone = phone;
		this.email=email;
		this.adrs=adrs;
		this.agreeEmail = agreeEmail;
		this.recomId=recomId;
		this.proCode=proCode;
//		this.membership=membership;
//		this.point=point;
//		this.joindate=joindate;
//		this.withdraw=withdraw;
	}
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEn_name() {
		return en_name;
	}
	public void setEn_name(String en_name) {
		this.en_name = en_name;
	}
	public int getBirth() {
		return birth;
	}
	public void setBirth(int birth) {
		this.birth = birth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAdrs() {
		return adrs;
	}
	public void setAdrs(String adrs) {
		this.adrs = adrs;
	}
	public String getAgreeEmail() {
		return agreeEmail;
	}
	public void setAgreeEmail(String agreeEmail) {
		this.agreeEmail = agreeEmail;
	}
	public String getRecomId() {
		return recomId;
	}
	public void setRecomId(String recomId) {
		this.recomId = recomId;
	}
	public String getProCode() {
		return proCode;
	}
	public void setProCode(String proCode) {
		this.proCode = proCode;
	}
//	public String getMembership() {
//		return membership;
//	}
//	public void setMembership(String membership) {
//		this.membership = membership;
//	}
//	public int getPoint() {
//		return point;
//	}
//	public void setPoint(int point) {
//		this.point = point;
//	}
//	public Date getJoindate() {
//		return joindate;
//	}
//	public void setJoindate(Date joindate) {
//		this.joindate = joindate;
//	}
//	public Date getWithdraw() {
//		return withdraw;
//	}
//	public void setWithdraw(Date withdraw) {
//		this.withdraw = withdraw;
//	}

}
