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
import kr.hotel.lahan.dao.NoticeDao;
import kr.hotel.lahan.dto.HotelDto;
import kr.hotel.lahan.dto.NoticeDto;
import kr.hotel.lahan.util.Constant;

@Component
public class NoticeListCommand implements LCommand{
	 
	@Override
	    public void execute(Model model) {

	    	 NoticeDao dao = Constant.noticeDao;    	   
	        // BDao 객체의 list 메서드를 호출하여 게시물 목록을 가져옵니다.
	        ArrayList<NoticeDto> dtos = dao.list();
	
	        // Model 객체에 "list"라는 이름으로 게시물 목록을 추가합니다.
	        model.addAttribute("list", dtos);
	    }
	}