package kr.hotel.lahan.dao;

import java.util.ArrayList;

import kr.hotel.lahan.dto.NoticeDto;


public interface NoticeDao {

	public ArrayList<NoticeDto> list();
    public void write(String title, String contents);
    public NoticeDto contentView(int board_num);
    public void modify(int board_num, String title, String contents);
    public void delete(int board_num);
    
}
