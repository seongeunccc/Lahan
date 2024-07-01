package kr.hotel.lahan.dao;

import java.sql.Date;

public interface JoinDao {
	
	public void joinCommand(String id, String pw, String name, String en_name, int birth, String phone, 
			String email, String adrs, String agreeEmail, String recomId, String proCode);
	
	public String loginCommand(String id);

}
