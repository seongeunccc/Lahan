package kr.hotel.lahan.dto;

public class ResvDto {
	private String hotel;
	private int adult;
	private int children;
	private int night;
	private int total; // ÃÑÀÎ¿ø
	private String check_in_text;
	private String check_out_text;
	private String check_in;
	private String check_out;
	private String Prm_code;
	private String check_Out_Day;
	private String check_In_Day;
	ResvDto(){
		this.adult = 1;
		this.adult = 1;
	}
	
	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getHotel() {
		return hotel;
	}

	public void setHotel(String hotel) {
		this.hotel = hotel;
	}

	public int getAdult() {
		return adult;
	}

	public void setAdult(int adult) {
		this.adult = adult;
	}

	public int getChildren() {
		return children;
	}

	public void setChildren(int children) {
		this.children = children;
	}

	public int getNight() {
		return night;
	}

	public void setNight(int night) {
		this.night = night;
	}

	public String getCheck_in_text() {
		return check_in_text;
	}

	public void setCheck_in_text(String check_in_text) {
		this.check_in_text = check_in_text;
	}

	public String getCheck_out_text() {
		return check_out_text;
	}

	public void setCheck_out_text(String check_out_text) {
		this.check_out_text = check_out_text;
	}

	public String getCheck_in() {
		return check_in;
	}

	public void setCheck_in(String check_in) {
		this.check_in = check_in;
	}

	public String getCheck_out() {
		return check_out;
	}

	public void setCheck_out(String check_out) {
		this.check_out = check_out;
	}

	public String getPrm_code() {
		return Prm_code;
	}

	public void setPrm_code(String prm_code) {
		Prm_code = prm_code;
	}

	public String getCheck_Out_Day() {
		return check_Out_Day;
	}

	public void setCheck_Out_Day(String check_Out_Day) {
		this.check_Out_Day = check_Out_Day;
	}

	public String getCheck_In_Day() {
		return check_In_Day;
	}

	public void setCheck_In_Day(String check_In_Day) {
		this.check_In_Day = check_In_Day;
	}

}
