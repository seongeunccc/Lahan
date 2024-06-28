package kr.hotel.lahan;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReservationController {
	
	
	@RequestMapping(value = "/main")
	public String home(Model model) {
		
		return "main";
	}
	
	@RequestMapping(value = "/header")
	public String header(Model model) {
		
		return "header";
	}
}
