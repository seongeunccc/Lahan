package kr.hotel.lahan;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

import kr.hotel.lahan.command.RCommand;
import kr.hotel.lahan.dao.ReservationDao;
import kr.hotel.lahan.dto.ProCodeDto;

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

	@RequestMapping(value = "/searchProcode", method = RequestMethod.GET, produces = "application/json")//, method = RequestMethod.POST
	public @ResponseBody String searchProcode(@RequestParam ("promoCode") String promoCode) throws Exception  {
		System.out.println("serchProcode 실행");
		System.out.println("사용자가 입력한 promoCode : "+promoCode);
		
		ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
		ProCodeDto proCodeDto = dao.serchProcode(promoCode);
		
		if(proCodeDto!=null) {
			System.out.println("프로모션 코드 DB 존재 코드 : " +proCodeDto.getProcode());
			System.out.println("프로모션 코드 DB 존재 할인율 : " +proCodeDto.getRate());
		}else {
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
	public  String serchProcode2() throws Exception {
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

	@RequestMapping(value = "test", method = RequestMethod.POST)
	public String test(HttpServletRequest request, Model model) {
		String hotel = request.getParameter("hotel");
		int adult = Integer.parseInt(request.getParameter("adult"));
		int children = Integer.parseInt(request.getParameter("children"));
		String night = request.getParameter("night");
		String check_in_text = request.getParameter("check_in_text");
		String check_out_text = request.getParameter("check_out_text");
		String check_in = request.getParameter("check_in");
		String check_out = request.getParameter("check_out");
		String Prm_code = request.getParameter("Prm_code");
		String check_Out_Day = request.getParameter("check_Out_Day");
		String check_In_Day = request.getParameter("check_In_Day");
		
		System.out.println("adult : "+adult);
		System.out.println("총 숙박인원 : "+ (adult+children));
		
		model.addAttribute("hotel", hotel);
		model.addAttribute("adult", adult);
		model.addAttribute("children", children);
		model.addAttribute("night", night);
		model.addAttribute("check_in_text", check_in_text);
		model.addAttribute("check_out_text", check_out_text);
		model.addAttribute("check_in", check_in);
		model.addAttribute("check_out", check_out);
		model.addAttribute("Prm_code", Prm_code);
		model.addAttribute("check_Out_Day", check_Out_Day);
		model.addAttribute("check_In_Day", check_In_Day);
		
		ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
		ProCodeDto proCodeDto = dao.serchProcode(promoCode);
		
		
		
		
		return "testPage";
	}
}
