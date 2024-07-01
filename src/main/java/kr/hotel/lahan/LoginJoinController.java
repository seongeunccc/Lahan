package kr.hotel.lahan;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.hotel.lahan.command.JCommand;

@Controller
public class LoginJoinController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired JCommand jCommand;
	
//	@RequestMapping("/step1")
//	public String joinStep1(Model model) {
//		System.out.println("ȸ������ ����1 ȭ��");
//		return "/join/step1";
//	}
	
	@RequestMapping("/join/step1")
	public String joinStep1(Model model) {
	
		return "/join/step1";
	}
	
	@RequestMapping("/join/step2")
	public String joinStep2(Model model) {
		
		return "/join/step2";
	}
	
	@RequestMapping("/join/step3")
	public String joinStep3(HttpServletRequest request, Model model) {
		
		model.addAttribute("request",request);
		jCommand.join(model);
		return "/join/step3";
	}
	
	@RequestMapping("/login/loginform")
	public String loginForm(Model model) {
		
		return "/login/loginForm";
	}
	

}
