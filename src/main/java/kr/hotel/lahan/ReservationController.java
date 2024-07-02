package kr.hotel.lahan;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReservationController {
	
	
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
}
