package kr.hotel.lahan.dto;

import java.sql.Timestamp;

public class AskDto {
	
	int board_num;
	String id;
	String hotel;
	String sort;
	String title;
	String contents;
	String date;
	String reply;
	
	public AskDto() {
		// TODO Auto-generated constructor stub
	}	
	public AskDto(int board_num, String id,	String hotel, String sort, String title, String contents, String date,
	String reply) {
		// TODO Auto-generated constructor stub
		this.board_num = board_num;
		this.id = id;
		this.hotel = hotel;
		this.sort = sort;
		this.title = title;
		this.contents = contents;
		this.date = date;
		this.reply = reply;
		

	}
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
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
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	
	
	
	
}
