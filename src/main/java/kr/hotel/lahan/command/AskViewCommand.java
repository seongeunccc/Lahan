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
public class AskViewCommand implements LCommand{
	 @Override
	    public void execute(Model model) {
	        Map<String, Object> map = model.asMap();
	        HttpServletRequest request = (HttpServletRequest) map.get("request");
	        
	        String boardNumStr = request.getParameter("board_num");
	        if (boardNumStr == null || boardNumStr.isEmpty()) {
	            throw new IllegalArgumentException("board_num is missing");
	        }

	        int board_num = Integer.parseInt(boardNumStr);
	     	        
	        AskDao dao = Constant.askDao;
	        AskDto dto = dao.askcontentView(board_num);
	        
	        model.addAttribute("askcontentView", dto);
	    }
	}