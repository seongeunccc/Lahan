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

@Component
public class AdminCommand {
	
	private SqlSession sqlSession;
	
	@Autowired
	public AdminCommand(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public void hotel(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
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
			/*
			 * 
			 * MultipartFile hotelImage = (MultipartFile) map.get("hotelImage");
			 * 
			 * // 이미지 파일 저장 if (hotelImage != null && !hotelImage.isEmpty()) { String
			 * uploadDir = "/path/to/upload/directory"; String fileName =
			 * hotelImage.getOriginalFilename(); File uploadFile = new File(uploadDir,
			 * fileName);
			 * 
			 * try { hotelImage.transferTo(uploadFile); } catch (IOException e) {
			 * e.printStackTrace(); // 파일 업로드 오류 처리 } }
			 */
	        
		 HotelDto hotel = new HotelDto();
        hotel.setName(name);
        hotel.setRoomName(room_name);
        hotel.setRoomSize(room_size);
        hotel.setRoomNumber(room_number);
        hotel.setRoomMin(room_min);
        hotel.setRoomMax(room_max);
        hotel.setInfo(info);
        hotel.setAmenity(amenity);
        hotel.setAddress(address);
        hotel.setCallnum(callnum);
        hotel.setUrl(url);

        HotelDao hotelDao = sqlSession.getMapper(HotelDao.class);
        hotelDao.addHotel(hotel);
    }
}