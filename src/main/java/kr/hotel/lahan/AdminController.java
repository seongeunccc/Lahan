package kr.hotel.lahan;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("/admin/admin_main.do")
	public String adminmain(Model model) {
		System.out.println("어드민 메인 화면");
		return "/admin/admin_main";
	}
	
	@RequestMapping("/admin/member.do")
	public String adminmem(Model model) {
		System.out.println("어드민 회원관리 화면");
		return "/admin/admin_member";
	}

	@RequestMapping("/admin/reservation.do")
	public String adminreserv(Model model) {
		System.out.println("어드민 예약관리 화면");
		return "./admin/admin_reservation";
	}
	
	@RequestMapping("/admin/hotel.do")
	public String adminhotel(Model model) {
		System.out.println("호텔관리 화면");
		return "/admin/admin_hotel";
	}
	@RequestMapping("/admin/product.do")
	public String adminproduct(Model model) {
		System.out.println("상품관리 화면");
		return "/admin/admin_product";
	}
	
	@RequestMapping("/admin/board.do")
	public String adminmember(Model model) {
		System.out.println("어드민 게시판 화면");
		return "/admin/admin_notice";
	}
}
