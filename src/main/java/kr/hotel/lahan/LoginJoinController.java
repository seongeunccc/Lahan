package kr.hotel.lahan;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.hotel.lahan.command.JCommand;
import kr.hotel.lahan.command.MemberListCommand;

@Controller
public class LoginJoinController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired JCommand jCommand;
	
//	@RequestMapping("/step1")
//	public String joinStep1(Model model) {
//		System.out.println("회占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙1 화占쏙옙");
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
			System.out.println("濡쒓렇�씤 �꽦怨�");			
			return "redirect:/main";
		}
		if(result==0) {  
			System.out.println("鍮꾨�踰덊샇 ��由�");
			return "/login/loginForm";	
		}
		if(result==-1) {							//template 占쏙옙占쏙옙占쏙옙占� 占쌕꾸댐옙 占쏙옙占싱듸옙 占쏙옙占쏙옙占쏙옙 占싫걸뤄옙占쏙옙 (占쏙옙占싱듸옙 占쏙옙占쏙옙 != 占쏙옙占� 占쏙옙占쏙옙 占싫듸옙 占싱억옙占승듸옙)
			System.out.println("�븘�씠�뵒 �뾾�쓬");
			return "/join/step1";
		}
		if(result==3) {
			System.out.println("愿�由ъ옄濡쒓렇�씤 �꽦怨�");			
			return "redirect:/admin/admin.do";
		}
		return null;
	}
	
	@RequestMapping("/login/logout")
	public String logout(Model model) {
		return "/login/logout";
	}
	
	/*
	 * @RequestMapping("/clublahan/membership") public String viewProduct(Model
	 * model) { return "/product/viewProduct"; }
	 */
	
	@RequestMapping("/member/memberinfo")
	public String memberInfo(HttpServletRequest request, Model model) {
		String id = (String) request.getSession().getAttribute("id");
		jCommand.memberinfo(model,id);
		return "/member/memberinfo";
	}
	
	@RequestMapping("/api/check-id-duplicate")
	@ResponseBody
	 public ResponseEntity<String> checkIdDuplicate(@RequestParam String id) {
		System.out.println("�젅�뒪�듃 而⑦듃濡ㅻ윭");
		System.out.println(id);
//		Map<String, Boolean> response = new HashMap<String, Boolean>();
        String data = checkIdInDatabase(id); // �떎�젣 �뜲�씠�꽣踰좎씠�뒪 �솗�씤 濡쒖쭅
        System.out.println(data);
        return new ResponseEntity<String>(data, HttpStatus.OK);
    } 
	
	private String checkIdInDatabase(String id) {
        // �뜲�씠�꽣踰좎씠�뒪�뿉�꽌 �븘�씠�뵒 以묐났 �뿬遺� �솗�씤 濡쒖쭅
		System.out.println("泥댄겕�븘�씠�뵒�씤�뜲�씠��踰좎씠�뒪" + id);
		String foundId= jCommand.findId(id);
		System.out.println(foundId);
		
		if (foundId == null) {
	        return "false"; 
	    }
	    if (foundId.equals(id)) {
	        return "true";
	    } else if (foundId.isEmpty()) {
	        return "false";
	    }
	    return "error";
//		if(foundId.equals(id)) {
//			return "true";
//		} else if(foundId.equals("")) {
//			return "false";
//		} return "error";
	}
	
}
