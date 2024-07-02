package kr.hotel.lahan.command;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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
public class HotelListCommand implements LCommand {
   @Override
   public void execute(Model model) {

   	 HotelDao dao = Constant.hotelDao;
       ArrayList<HotelDto> dtos = dao.hotellist();

       model.addAttribute("list", dtos);
   }
}