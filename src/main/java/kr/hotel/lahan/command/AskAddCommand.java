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

import kr.hotel.lahan.dao.AskDao;
import kr.hotel.lahan.dao.HotelDao;
import kr.hotel.lahan.dao.JoinDao;
import kr.hotel.lahan.dao.NoticeDao;
import kr.hotel.lahan.dto.HotelDto;
import kr.hotel.lahan.util.Constant;

@Component
public class AskAddCommand implements LCommand{
	
	@Override
	 public void execute(Model model) {
	     Map<String, Object> map = model.asMap();

	     HttpServletRequest request = (HttpServletRequest) map.get("request");

	     	String id = request.getParameter("id");
	     	String hotel = request.getParameter("hotel");
	     	String sort = request.getParameter("sort");
	        String title = request.getParameter("title"); 
	        String contents = request.getParameter("contents");

	        System.out.println(title);
	        System.out.println(contents);

	        AskDao dao = Constant.askDao;
	     
	     
	        dao.write(id, hotel, sort, title, contents);
	 }
	}