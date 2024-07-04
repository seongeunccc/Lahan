package kr.hotel.lahan.dao;

import kr.hotel.lahan.dto.*;

public interface ReservationDao {
	public ProCodeDto serchProcode(String procode);
	public RoomDto findRoom(ResvDto dto);
}
