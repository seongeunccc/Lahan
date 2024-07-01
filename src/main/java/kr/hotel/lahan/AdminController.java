package kr.hotel.lahan;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.springMVCBoard.HomeController;
import com.javalec.springMVCBoard.command.BCommand;
import com.javalec.springMVCBoard.command.BWriteCommand;
import com.javalec.springMVCBoard.dao.MybatisDao;
import com.javalec.springMVCBoard.util.Constant;

import kr.hotel.lahan.command.AdminCommand;
import kr.hotel.lahan.command.JCommand;

@Controller
public class AdminController {
	
	AdminCommand command = null;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
public SqlSession sqlSession;
	
	@Autowired
	public AdminController(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
        Constant.hotelDao = sqlSession.getMapper(HotelDao.class);
	}
	
	@RequestMapping("/admin/admin.do")
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
	@RequestMapping("/admin/hoteladd.do")
	public String adminhoteladd(Model model) {
		System.out.println("ȣ���߰� ȭ��");
		return "/admin/admin_hotel_add";
	}
	
	@RequestMapping("/admin/hoteladding.do")
	public String adminhoteladding(HttpServletRequest request, Model model) {
		System.out.println("ȣ���߰�_DB");
		model.addAttribute("request",request);
		command = new AdminCommand();
	    command.execute(model);
	     
	     return "redirect:/admin/hotel.do"; 
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
