package kr.hotel.lahan;

import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

import kr.hotel.lahan.command.*;
import kr.hotel.lahan.dao.*;
import kr.hotel.lahan.dto.*;

@Controller
public class ReservationController {

	@Autowired
	public SqlSession sqlSession;
	RCommand command = null;

	@RequestMapping(value = "/main")
	public String home(Model model) {
		return "reservation/main";
	}
	
	@RequestMapping(value = "resv/calendar")
	public String calendar(Model model) {
		return "reservation/calendar";
	}

	@RequestMapping(value = "resv/step1")
	public String step1(Model model) {
		return "reservation/step1";
	}

//
	@RequestMapping(value = "clublahan/membership")
	public String membership(Model model) {

		return "clublahan/membership";
	}
//	여기부터 지금 추가
	@RequestMapping(value = "ethical/terms")
	public String ethical(Model model) {
		return "reservation/ethical";
	}
	@RequestMapping(value = "termsUse/terms")
	public String termsUse(Model model) {
		return "reservation/termsUse";
	}
	@RequestMapping(value = "terms/terms")
	public String terms(Model model) {
		return "reservation/terms";
	}
	@RequestMapping(value = "sitemap")
	public String sitemap(Model model) {
		return "sitemap";
	}
	@RequestMapping(value = "admin/reservation.do")
	public String getAll(Model model) {
		ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
		List list = new ArrayList();
		list = dao.getAllResv();
		System.out.println(list.size());
		model.addAttribute("list", list);
		
		return "admin/admin_reservation";
	}
	
	@RequestMapping(value = "mypage/update")
	public String memberInfoUpdate(HttpServletRequest request, Model model) {
		String id = (String) request.getSession().getAttribute("id");
		JCommand jcommand = new JCommand(sqlSession);
		jcommand.memberinfo(model,id);
		return "member/pwCheckForm";
	}
//	여기까지 지금 추가
	@RequestMapping(value = "hotel/brandIntroduce")
	public String brandIntroduce(Model model) {

		return "hotel/brandIntroduce";
	}

	@RequestMapping(value = "hotel/hotelIntroduce")
	public String hotelIntroduce(Model model) {

		return "hotel/hotelIntroduce";
	}

	@RequestMapping(value = "hotel/gyeongjuDc")
	public String gyeongjuDc(Model model) {

		return "hotel/gyeongjuDc";
	}

	@RequestMapping(value = "hotel/jeonjuDc")
	public String jeonjuDc(Model model) {

		return "hotel/jeonjuDc";
	}

	@RequestMapping(value = "hotel/pohangDc")
	public String pohangDc(Model model) {

		return "hotel/pohangDc";
	}

	@RequestMapping(value = "hotel/ulsanDc")
	public String ulsanDc(Model model) {

		return "hotel/ulsanDc";
	}

	@RequestMapping(value = "hotel/mokpoDc")
	public String mokpoDc(Model model) {

		return "hotel/mokpoDc";
	}
	
	
	
	@RequestMapping(value = "mypage/myResv")
	public String checkResv(HttpServletRequest request, Model model) {
		ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
		String id = (String) request.getSession().getAttribute("id");
		List list = new ArrayList();
		list = dao.getResv(id);
		model.addAttribute("resvDto", list);
		
		return "reservation/checkResv";
	}
	@RequestMapping(value = "admin/reservdelete.do")
	public String deleteResv(HttpServletRequest request, Model model, @RequestParam("id") String id) {
		ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
		System.out.println("삭제를 원하는 예약번호 : " + id);
		dao.deleteResv(id);
		
		return "redirect:/admin/reservation.do";
	}

	@RequestMapping(value = "/searchProcode", method = RequestMethod.GET, produces = "application/json") // , method =																										// RequestMethod.POST
	public @ResponseBody String searchProcode(@RequestParam("promoCode") String promoCode) throws Exception {
		System.out.println("serchProcode �떎�뻾");
		System.out.println("�궗�슜�옄媛� �엯�젰�븳 promoCode : " + promoCode);

		ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
		ProCodeDto proCodeDto = dao.serchProcode(promoCode);

		if (proCodeDto != null) {
			System.out.println("�봽濡쒕え�뀡 肄붾뱶 DB 議댁옱 肄붾뱶 : " + proCodeDto.getProcode());
			System.out.println("�봽濡쒕え�뀡 肄붾뱶 DB 議댁옱 �븷�씤�쑉 : " + proCodeDto.getRate());
		} else {
			System.out.println("DB議고쉶 寃곌낵 �뾾�쓬");
			proCodeDto = new ProCodeDto();
		}

		ObjectMapper mapper = new ObjectMapper();
		mapper.enable(SerializationFeature.INDENT_OUTPUT); // �뱾�뿬�벐湲� �꽕�젙 (�샃�뀡)

		String json = mapper.writeValueAsString(proCodeDto);
		return json;
	}

// JSON �벐�뒗 諛⑸쾿	
//	@RequestMapping(value = "/searchProcode", method = RequestMethod.GET, produces = "application/json")//, method = RequestMethod.POST
	@ResponseBody
	public String serchProcode2() throws Exception {
		System.out.println("serchProcode2 �떎�뻾");
		ProCodeDto dto = new ProCodeDto();
		dto.setProcode("ABC123");
		dto.setRate(0.15);
		dto.setStart_date(new java.sql.Date(System.currentTimeMillis()));
		dto.setEnd_date(new java.sql.Date(System.currentTimeMillis() + 86400000)); // �븯猷� �썑

		ObjectMapper mapper = new ObjectMapper();
		mapper.enable(SerializationFeature.INDENT_OUTPUT); // �뱾�뿬�벐湲� �꽕�젙 (�샃�뀡)

		String json = mapper.writeValueAsString(dto);

		return json;

	}

	@RequestMapping(value = "resv/step2", method = RequestMethod.POST)
	public String test(HttpServletRequest request, Model model, ResvDto dto) {
		dto.setTotal(dto.getAdult() + dto.getChildren());
		System.out.println(dto.getCheck_In_Day());
		model.addAttribute("dto", dto);
		model.addAttribute("request", request);
	
		
		System.out.println("adult : " + dto.getAdult());
		System.out.println("total : " + dto.getTotal());
		System.out.println("�샇�뀛�씠由� : " + (dto.getHotel()));

		command = new FindRoomCommand(sqlSession);
		command.execute(model);

		return "reservation/step2";
	}

	@RequestMapping(value = "resv/step3", method = RequestMethod.POST)
	public String test1(HttpServletRequest request, Model model, ResvDto dto, RoomDto roomdto) {

		// �봽濡쒕え�뀡 肄붾뱶 �엳�쑝硫� 媛� �꽆源�
		if (dto.getPrm_code() != null && !dto.getPrm_code().equals("")) {
			System.out.println("�봽濡쒕え�뀡 肄붾뱶 : " + dto.getPrm_code());
			ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
			ProCodeDto proCodeDto = dao.serchProcode(dto.getPrm_code());
			model.addAttribute("proCodeDto", proCodeDto);
		}
		
		model.addAttribute("dto", dto); // resvDto
		model.addAttribute("roomdto", roomdto); // roomDto
		model.addAttribute("request", request);

		return "reservation/step3";
	}

	@RequestMapping(value = "resv/step4", method = RequestMethod.POST)
	public String test2(HttpServletRequest request, Model model, ResvDto dto, RoomDto roomdto) {
		if(request.getParameter("totalPrices")!=null&&!request.getParameter("totalPrices").equals("")) {
			System.out.println(request.getParameter("totalPrices"));
			model.addAttribute("totalPrice", request.getParameter("totalPrices"));
		}
		// �봽濡쒕え�뀡 肄붾뱶 �엳�쑝硫� 媛� �꽆源�
		if (dto.getPrm_code() != null && !dto.getPrm_code().equals("")) {
			System.out.println("�봽濡쒕え�뀡 肄붾뱶 : " + dto.getPrm_code());
			ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
			ProCodeDto proCodeDto = dao.serchProcode(dto.getPrm_code());
			model.addAttribute("proCodeDto", proCodeDto);
		}
		String id = (String) request.getSession().getAttribute("id");
		JCommand jcommand = new JCommand(sqlSession);
		jcommand.memberinfo(model,id);
		
		model.addAttribute("dto", dto); // resvDto
		model.addAttribute("roomdto", roomdto); // roomDto
		model.addAttribute("request", request);
		model.addAttribute("requestMessage", request.getParameter("requestMessage"));

		return "reservation/step4";
	}
	
	@RequestMapping(value = "resv/step5")
	public String step5(Model model, HttpServletRequest request, ResvDto dto, RoomDto roomdto, ReservationDto reservationDto, JoinDto joinDto) {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate checkin = LocalDate.parse(dto.getCheck_in(), formatter);
		LocalDate checkout = LocalDate.parse(dto.getCheck_out(), formatter);
		java.sql.Date sqlDate = java.sql.Date.valueOf(checkin);
		java.sql.Date sqlDate1 = java.sql.Date.valueOf(checkout);
		reservationDto.setCheckin(sqlDate);
		reservationDto.setCheckout(sqlDate1);
		reservationDto.setRoom_name(roomdto.getRoom_name());

		System.out.println("넘겨받은 체크인 + 체크아웃 날짜 데이터 : "+dto.getCheck_in() + dto.getCheck_out());
		ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
		
		int beforeTotal = dao.totalPayment(joinDto.getId());
		// 총 결제금액 넣기
		if(request.getParameter("totalPrices")!=null&&!request.getParameter("totalPrices").equals("")) {
			System.out.println(request.getParameter("totalPrices"));
			reservationDto.setPrice(Integer.parseInt(request.getParameter("totalPrices")));
		}
		// 프로모션 코드 있는지 체크 후 값 넘김
		if (dto.getPrm_code() != null && !dto.getPrm_code().equals("")) {
			System.out.println("프로모션 코드 : " + dto.getPrm_code());
		
			ProCodeDto proCodeDto = dao.serchProcode(dto.getPrm_code());
			reservationDto.setPromotion(true);
			reservationDto.setProcode(proCodeDto.getProcode());
		}else {
			reservationDto.setPromotion(false);
			reservationDto.setProcode("");
		}
		
		dao.insertResv(reservationDto);
		System.out.println("id : " + reservationDto.getId());
		int result = dao.findResvId(reservationDto.getId());
		System.out.println("result : " + result);
		
		model.addAttribute("resvNo", result); // resvDto
		model.addAttribute("joinDto", joinDto);
		return "reservation/step5";
	}
	
}