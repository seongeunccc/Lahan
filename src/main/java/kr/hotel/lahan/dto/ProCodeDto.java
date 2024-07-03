package kr.hotel.lahan.dto;
import java.sql.Date;

public class ProCodeDto {
	
	private String procode;
	private double rate;
	private Date start_date;
	private Date end_date;
	
	
	public String getProcode() {
		return procode;
	}
	public void setProcode(String procode) {
		this.procode = procode;
	}
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(java.sql.Date date) {
		this.start_date = date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	
	
	
}
