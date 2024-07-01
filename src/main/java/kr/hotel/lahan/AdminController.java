package kr.hotel.lahan;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("/admin/admin_main.do")
	public String adminmain(Model model) {
		System.out.println("���� ���� ȭ��");
		return "/admin/admin_main";
	}
	
	@RequestMapping("/admin/member.do")
	public String adminmem(Model model) {
		System.out.println("���� ȸ������ ȭ��");
		return "/admin/admin_member";
	}

	@RequestMapping("/admin/reservation.do")
	public String adminreserv(Model model) {
		System.out.println("���� ������� ȭ��");
		return "./admin/admin_reservation";
	}
	
	@RequestMapping("/admin/hotel.do")
	public String adminhotel(Model model) {
		System.out.println("ȣ�ڰ��� ȭ��");
		return "/admin/admin_hotel";
	}
	@RequestMapping("/admin/product.do")
	public String adminproduct(Model model) {
		System.out.println("��ǰ���� ȭ��");
		return "/admin/admin_product";
	}
	
	@RequestMapping("/admin/board.do")
	public String adminmember(Model model) {
		System.out.println("���� �Խ��� ȭ��");
		return "/admin/admin_notice";
	}
}
