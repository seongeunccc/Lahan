package kr.hotel.lahan.dao;

import kr.hotel.lahan.dto.JoinDto;

public interface JoinDao {
	
	public void joinCommand(String id, String pw, String name, String en_name, int birth, String phone, 
			String email, String adrs, String agreeEmail, String recomId, String proCode);
	
	public String loginCommand(String id);
	
	public JoinDto memberinfo(String id);

}
