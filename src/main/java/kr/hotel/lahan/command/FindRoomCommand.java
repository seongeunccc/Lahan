package kr.hotel.lahan.command;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import kr.hotel.lahan.dao.*;
import kr.hotel.lahan.dto.*;


public class FindRoomCommand implements RCommand{
	
	@Autowired
	private SqlSession sqlSession;
	
	public FindRoomCommand(){
		
	}
	public FindRoomCommand (SqlSession sqlSession){
		this.sqlSession =sqlSession;
	}
	public FindRoomCommand (SqlSession sqlSession, String proCode){
		this.sqlSession =sqlSession;
	}
		
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		ResvDto dto = (ResvDto) map.get("dto");
		System.out.println("night :"+request.getParameter("night"));
		List roomList = new ArrayList();
		
		ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
		roomList = dao.findRoom(dto);
//		request.setAttribute("roomList", roomList); // 현재 페이지 위치를 담음
		model.addAttribute("roomList", roomList);
	}

}
		
//		String hotel = request.getParameter("hotel");
//		int adult = Integer.parseInt(request.getParameter("adult"));
//		int children = Integer.parseInt(request.getParameter("children"));
//		int night = Integer.parseInt(request.getParameter("night"));
//		String check_in_text = request.getParameter("check_in_text");
//		String check_out_text = request.getParameter("check_out_text");
//		String check_in = request.getParameter("check_in");
//		String check_out = request.getParameter("check_out");
//		String Prm_code = request.getParameter("Prm_code");
//		String check_Out_Day = request.getParameter("check_Out_Day");
//		String check_In_Day = request.getParameter("check_In_Day");