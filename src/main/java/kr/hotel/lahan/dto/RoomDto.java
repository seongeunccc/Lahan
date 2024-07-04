package kr.hotel.lahan.dto;

public class RoomDto {
	private String name;
	private String room_name;
	private String room_size;
	private int room_number;
	private int room_min; //기준인원
	private int room_max; //최대인원
	
	
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
	
	
}
