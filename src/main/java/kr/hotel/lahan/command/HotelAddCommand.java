package kr.hotel.lahan.command;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;


import kr.hotel.lahan.dao.HotelDao;
import kr.hotel.lahan.dao.JoinDao;
import kr.hotel.lahan.dto.HotelDto;
import kr.hotel.lahan.util.Constant;

@Component
public class HotelAddCommand implements LCommand{
	
	@Override
	 public void execute(Model model) {
	     Map<String, Object> map = model.asMap();

	     HttpServletRequest request = (HttpServletRequest) map.get("request");
	     System.out.println("db3");
	     String name = request.getParameter("name");
	        String room_name = request.getParameter("room_name");
	        int room_size = Integer.parseInt(request.getParameter("room_size"));
	        int room_number = Integer.parseInt(request.getParameter("room_number"));
	        int room_min = Integer.parseInt(request.getParameter("room_min"));
	        int room_max = Integer.parseInt(request.getParameter("room_max"));
	        String info = request.getParameter("info");
	        String amenity = request.getParameter("amenity");
	        String address = request.getParameter("address");
	        int callnum = Integer.parseInt(request.getParameter("callnum"));
	        String url = request.getParameter("url");
	     
	        System.out.println("name" + name);
	        System.out.println("callnum" + callnum);
	     HotelDao dao = Constant.hotelDao;
	     
	     
	     dao.hoteladd(name, room_name, room_size, room_number, room_min, room_max, info, amenity, address, callnum, url);
	 }
	}