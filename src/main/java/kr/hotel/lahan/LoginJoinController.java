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
	
	@RequestMapping("/step1_1")
	public String joinStep1_1(Model model) {
		System.out.println("회원가입 스텝1_1 화면");
		return "/join/step1_1";
	}
	
	@RequestMapping("/step2")
	public String joinStep2(Model model) {
		System.out.println("회원가입 스텝2");
		return "/join/step2";
	}

}
