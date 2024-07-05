package kr.hotel.lahan.dao;

import java.util.ArrayList;
import java.util.List;

import kr.hotel.lahan.dto.*;

public interface ReservationDao {
	public ProCodeDto serchProcode(String procode);
	public List<RoomDto>  findRoom(ResvDto dto);

	public ArrayList<ResvDto> list();

	public void insertResv(ReservationDto dto);
	public List<ReservationDto> getResv(String id);
	public List<ReservationDto> getAllResv();
	public int findResvId(String id);
	public void deleteResv(String id);
	public int totalPayment(String id);

}
