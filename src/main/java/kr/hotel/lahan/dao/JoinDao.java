package kr.hotel.lahan.dao;

import java.util.ArrayList;

import kr.hotel.lahan.dto.JoinDto;

public interface JoinDao {
	
	public void joinCommand(String id, String pw, String name, String en_name, int birth, String phone, 
			String email, String adrs, String agreeEmail, String recomId, String proCode);
	
	public String loginCommand(String id);
	
	public JoinDto memberinfo(String id);
	
	public String findId(String id);

	
	public ArrayList<JoinDto> list();
    public void delete(String id);
}
