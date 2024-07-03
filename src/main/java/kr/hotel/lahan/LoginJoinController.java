package kr.hotel.lahan;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@RequestMapping("/login/loginForm")
	public String loginForm(Model model) {
		
		return "/login/loginForm";
	}
	
	@RequestMapping("/login/loginNonMemForm")
	public String loginNonMemForm(Model model) {
		
		return "/login/loginNonMemForm";
	}
	
	@RequestMapping("/login/loginCommand")
	public String login(HttpServletRequest request, Model model) {
		model.addAttribute("request",request);
		int result = jCommand.login(model);
		
		if(result==1) {
			System.out.println("로그인 성공");			
			return "redirect:/main";
		}
		if(result==0) {  
			System.out.println("비밀번호 틀림");
			return "/login/loginForm";	
		}
		if(result==-1) {							//template ������� �ٲٴ� ���̵� ������ �Ȱɷ��� (���̵� ���� != ��� ���� �ȵ� �̾��µ�)
			System.out.println("아이디 없음");
			return "/join/step1";
		}
		if(result==3) {
			System.out.println("관리자로그인 성공");			
			return "redirect:/admin/admin.do";
		}
		return null;
	}
	
	@RequestMapping("/login/logout")
	public String logout(Model model) {
		return "/login/logout";
	}
	
	@RequestMapping("/member/memberinfo")
	public String memberInfo(HttpServletRequest request, Model model) {
		String id = (String) request.getSession().getAttribute("id");
		jCommand.memberinfo(model,id);
		return "/member/memberinfo";
	}
	
//	@RequestMapping("/hub/api/member/mypage/memberInquiry.json")
//	@ResponseBody
//	public String getData() {
//		return "안녕하세요";
//	}

}
