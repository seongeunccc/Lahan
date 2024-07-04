package kr.hotel.lahan.dao;

import java.util.ArrayList;
import java.util.List;

import kr.hotel.lahan.dto.*;

public interface ReservationDao {
	public ProCodeDto serchProcode(String procode);
	public List<RoomDto>  findRoom(ResvDto dto);
	public ArrayList<ResvDto> list();
}
