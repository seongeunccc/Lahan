package kr.hotel.lahan.dto;

import java.sql.Date;
import java.time.LocalDate;

public class ReservationDto {
	private int reservation_id;
	private String id;
	private String hotel;
	private Date reserv_date;
	private Date checkin;
	private Date checkout;
	private boolean promotion;
	private String procode;
	private int adult;
	private int children;
	private int brunch_adult;
	private int brunch_baby;
	private int price;
	private String requestMessage;
	private String creditcardNo;
	
	public ReservationDto() {
        this.reserv_date = Date.valueOf(LocalDate.now()); // 기본값으로 오늘 날짜 설정
        System.out.println(reserv_date);
    }
	public int getReservation_id() {
		return reservation_id;
	}
	public void setReservation_id(int reservation_id) {
		this.reservation_id = reservation_id;
	}
	public String getCreditcardNo() {
		return creditcardNo;
	}
	public void setCreditcardNo(String creditcardNo) {
		this.creditcardNo = creditcardNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getHotel() {
		return hotel;
	}
	public void setHotel(String hotel) {
		this.hotel = hotel;
	}
	public Date getReserv_date() {
		return reserv_date;
	}
	public void setReserv_date(Date reserv_date) {
		this.reserv_date = reserv_date;
	}
	public Date getCheckin() {
		return checkin;
	}
	public void setCheckin(Date checkin) {
		this.checkin = checkin;
	}
	public Date getCheckout() {
		return checkout;
	}
	public void setCheckout(Date checkout) {
		this.checkout = checkout;
	}
	public boolean isPromotion() {
		return promotion;
	}
	public void setPromotion(boolean promotion) {
		this.promotion = promotion;
	}
	public String getProcode() {
		return procode;
	}
	public void setProcode(String procode) {
		this.procode = procode;
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
	public int getBrunch_adult() {
		return brunch_adult;
	}
	public void setBrunch_adult(int brunch_adult) {
		this.brunch_adult = brunch_adult;
	}
	public int getBrunch_baby() {
		return brunch_baby;
	}
	public void setBrunch_baby(int brunch_baby) {
		this.brunch_baby = brunch_baby;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getRequestMessage() {
		return requestMessage;
	}
	public void setRequestMessage(String requestMessage) {
		this.requestMessage = requestMessage;
	}
	
}
