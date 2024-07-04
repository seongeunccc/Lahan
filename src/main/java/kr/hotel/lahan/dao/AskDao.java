package kr.hotel.lahan.dao;

import java.util.ArrayList;

import kr.hotel.lahan.dto.AskDto;


public interface AskDao {

	public ArrayList<AskDto> list();
    public void write(String id, String hotel, String sort, String title, String contents);
    public AskDto askcontentView(int board_num);
    public void modify(int board_num, String id, String hotel, String sort, String title, String contents);
    public void delete(int board_num);
    public void reply(int board_num, String id, String hotel, String sort, String title, String contents, String reply);
}
