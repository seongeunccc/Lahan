package kr.hotel.lahan.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;


import kr.hotel.lahan.dto.*;


public interface HotelDao {
    public ArrayList<HotelDto> hotellist();
    public void hoteladd(String name,String roomName,
            int roomSize,
            int roomNumber,
            int roomMin,
            int roomMax,
            String info,
            String amenity,
            String address,
            int callnum,
            String url);
    public void delete(String name);
    
}
