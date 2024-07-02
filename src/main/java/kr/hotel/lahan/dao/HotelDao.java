package kr.hotel.lahan.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;


import kr.hotel.lahan.dto.*;


public interface HotelDao {
    public ArrayList<HotelDto> hotellist();
    public void hoteladd(String name,String room_name,
            int room_size,
            int room_number,
            int room_min,
            int room_max,
            String info,
            String amenity,
            String address,
            int callnum,
            String url);
    public void delete(String name);

	
    
}
