package kr.hotel.lahan.dto;

// 호텔 방(ROOM) Dto
public class RoomDto {
	private String name;
	private String room_name;
	private String room_size;  
	private int room_number; // 타입별 방 개수
	private int room_min; //기준인원
	private int room_max; //최대인원
	private String info;
	private String amenity;
	private String address;
	private String callnum;
	private String url;
	private String bed_type;
	private int price; //최대인원
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public String getRoom_size() {
		return room_size;
	}
	public void setRoom_size(String room_size) {
		this.room_size = room_size;
	}
	public int getRoom_number() {
		return room_number;
	}
	public void setRoom_number(int room_number) {
		this.room_number = room_number;
	}
	public int getRoom_min() {
		return room_min;
	}
	public void setRoom_min(int room_min) {
		this.room_min = room_min;
	}
	public int getRoom_max() {
		return room_max;
	}
	public void setRoom_max(int room_max) {
		this.room_max = room_max;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getAmenity() {
		return amenity;
	}
	public void setAmenity(String amenity) {
		this.amenity = amenity;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCallnum() {
		return callnum;
	}
	public void setCallnum(String callnum) {
		this.callnum = callnum;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getBed_type() {
		return bed_type;
	}
	public void setBed_type(String bed_type) {
		this.bed_type = bed_type;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
}
