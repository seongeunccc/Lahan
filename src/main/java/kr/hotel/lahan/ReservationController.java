package kr.hotel.lahan;

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

	@RequestMapping(value = "/header")
	public String header(Model model) {

		return "header";
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
//	@RequestMapping(value = "resv/step3")
//	public String step3(Model model) {
//
//		return "reservation/step3";
//	}

	@RequestMapping(value = "resv/step4")
	public String step4(Model model) {

		return "reservation/step4";
	}

	@RequestMapping(value = "clublahan/membership")
	public String membership(Model model) {

		return "clublahan/membership";
	}

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

	@RequestMapping(value = "/searchProcode", method = RequestMethod.GET, produces = "application/json") // , method =
																											// RequestMethod.POST
	public @ResponseBody String searchProcode(@RequestParam("promoCode") String promoCode) throws Exception {
		System.out.println("serchProcode 실행");
		System.out.println("사용자가 입력한 promoCode : " + promoCode);

		ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
		ProCodeDto proCodeDto = dao.serchProcode(promoCode);

		if (proCodeDto != null) {
			System.out.println("프로모션 코드 DB 존재 코드 : " + proCodeDto.getProcode());
			System.out.println("프로모션 코드 DB 존재 할인율 : " + proCodeDto.getRate());
		} else {
			System.out.println("DB조회 결과 없음");
			proCodeDto = new ProCodeDto();
		}

		ObjectMapper mapper = new ObjectMapper();
		mapper.enable(SerializationFeature.INDENT_OUTPUT); // 들여쓰기 설정 (옵션)

		String json = mapper.writeValueAsString(proCodeDto);
		return json;

	}

// JSON 쓰는 방법	
//	@RequestMapping(value = "/searchProcode", method = RequestMethod.GET, produces = "application/json")//, method = RequestMethod.POST
	@ResponseBody
	public String serchProcode2() throws Exception {
		System.out.println("serchProcode2 실행");
		ProCodeDto dto = new ProCodeDto();
		dto.setProcode("ABC123");
		dto.setRate(0.15);
		dto.setStart_date(new java.sql.Date(System.currentTimeMillis()));
		dto.setEnd_date(new java.sql.Date(System.currentTimeMillis() + 86400000)); // 하루 후

		ObjectMapper mapper = new ObjectMapper();
		mapper.enable(SerializationFeature.INDENT_OUTPUT); // 들여쓰기 설정 (옵션)

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
		System.out.println("호텔이름 : " + (dto.getHotel()));

		command = new FindRoomCommand(sqlSession);
		command.execute(model);

		return "reservation/step2";
	}

	@RequestMapping(value = "resv/step3", method = RequestMethod.POST)
	public String test1(HttpServletRequest request, Model model, ResvDto dto, RoomDto roomdto) {
		dto.setTotal(dto.getAdult() + dto.getChildren());
		System.out.println(dto.getCheck_In_Day());

		// 프로모션 코드 있으면 값 넘김
		if (dto.getPrm_code() != null && !dto.getPrm_code().equals("")) {
			System.out.println("프로모션 코드 : " + dto.getPrm_code());
			ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
			ProCodeDto proCodeDto = dao.serchProcode(dto.getPrm_code());
			model.addAttribute("proCodeDto", proCodeDto);
		}
		model.addAttribute("dto", dto); // resvDto
		model.addAttribute("roomdto", roomdto); // roomDto
		model.addAttribute("request", request);

		return "reservation/step3";
	}

	@RequestMapping(value = "resv/test", method = RequestMethod.POST)
	public String test2(HttpServletRequest request, Model model, ResvDto dto, RoomDto roomdto) {
		dto.setTotal(dto.getAdult() + dto.getChildren());
		System.out.println(dto.getCheck_In_Day());

		// 프로모션 코드 있으면 값 넘김
		if (dto.getPrm_code() != null && !dto.getPrm_code().equals("")) {
			System.out.println("프로모션 코드 : " + dto.getPrm_code());
			ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
			ProCodeDto proCodeDto = dao.serchProcode(dto.getPrm_code());
			model.addAttribute("proCodeDto", proCodeDto);
		}
		model.addAttribute("dto", dto); // resvDto
		model.addAttribute("roomdto", roomdto); // roomDto
		model.addAttribute("request", request);

		return "reservation/step4";
	}
}