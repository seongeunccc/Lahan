package kr.hotel.lahan.dto;

import java.sql.Timestamp;

public class NoticeDto {
	
	int board_num;
	String title;
	String contents;
	String date;
	
	public NoticeDto() {
		// TODO Auto-generated constructor stub
	}	
	public NoticeDto(int board_num, String title, String contents, String date) {
		// TODO Auto-generated constructor stub
		this.board_num = board_num;
		this.title = title;
		this.contents = contents;
		this.date = date;

	}
	
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
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

	
	
}
