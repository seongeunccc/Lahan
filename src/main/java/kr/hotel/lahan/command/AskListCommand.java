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

import kr.hotel.lahan.dao.AskDao;
import kr.hotel.lahan.dao.HotelDao;
import kr.hotel.lahan.dao.JoinDao;
import kr.hotel.lahan.dao.NoticeDao;
import kr.hotel.lahan.dto.AskDto;
import kr.hotel.lahan.dto.HotelDto;
import kr.hotel.lahan.dto.NoticeDto;
import kr.hotel.lahan.util.Constant;

@Component
public class AskListCommand implements LCommand{
	 
	@Override
	    public void execute(Model model) {

			AskDao dao = Constant.askDao;    	   
	        ArrayList<AskDto> dtos = dao.list();
	        
	        System.out.println("리스트 길이: " + dtos.size());
	        
	        model.addAttribute("list", dtos);
	    }
	}