package kr.hotel.lahan;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginJoinController {
	
	@RequestMapping("/step1")
	public String joinStep1(Model model) {
		System.out.println("회원가입 스텝1 화면");
		return "/join/step1";
	}

}
