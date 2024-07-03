package kr.hotel.lahan;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.hotel.lahan.command.*;
import kr.hotel.lahan.dao.ReservationDao;
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
	@RequestMapping(value = "resv/step2")
	public String step2(Model model) {
		
		return "reservation/step2";
	}
	@RequestMapping(value = "resv/step3")
	public String step3(Model model) {
		
		return "reservation/step3";
	}
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
	
	@RequestMapping(value = "/serchProcode")//, method = RequestMethod.POST
	@ResponseBody
	public ResponseEntity<Map<String, Object>> serchProcode(@RequestParam ("promoCode") String promoCode) {
		System.out.println("serchProcode ����");
		System.out.println("promoCode : "+promoCode);
		Map<String, Object> response = new HashMap<String, Object>();
		
		ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
		dao.serchProcode(promoCode);
		
		return null;
		
//		Map<String, Object> response = new HashMap<String, Object>();
//		ProCodeDto procode = new ProCodeDto();
//		procode.setProcode("1111");
//		procode.setRate(0.1);
//		procode.setStart_date(new Date(2024,01,01));
//		procode.setEnd_date(new Date(2024,12,31));
//		response.put("procode", procode);
		
//		String promoCode = requestData.get("promoCode");
//		System.out.println(promoCode);
//		
//		model.addAttribute("request", requestData);
//		command = new PromoCheckCommand(sqlSession, promoCode);
//
	
//		command.execute(model);
//		ProCodeDto exists =  
//		response.put("exists", exists);
		

	} 

	
	@RequestMapping(value = "test", method = RequestMethod.POST)
	public String test(HttpServletRequest request, Model model) {
	//	model.addAttribute("request",request);
		String hotel = request.getParameter("hotel");
		String adult = request.getParameter("adult");
		String children = request.getParameter("children");
		String night = request.getParameter("night");
		String check_in_text = request.getParameter("check_in_text");
		String check_out_text = request.getParameter("check_out_text");
		String check_in = request.getParameter("check_in");
		String check_out = request.getParameter("check_out");
		String Prm_code = request.getParameter("Prm_code");
		
		model.addAttribute("hotel", hotel);
		model.addAttribute("adult", adult);
		model.addAttribute("children", children);
		model.addAttribute("night", night);
		model.addAttribute("check_in_text", check_in_text);
		model.addAttribute("check_out_text", check_out_text);
		model.addAttribute("check_in", check_in);
		model.addAttribute("check_out", check_out);
		model.addAttribute("Prm_code", Prm_code);
		return "testPage";
	}
}
