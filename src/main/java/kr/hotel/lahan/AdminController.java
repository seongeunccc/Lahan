package kr.hotel.lahan;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.hotel.lahan.command.AskAddCommand;
import kr.hotel.lahan.command.AskDeleteCommand;
import kr.hotel.lahan.command.AskListCommand;
import kr.hotel.lahan.command.AskViewCommand;
import kr.hotel.lahan.command.HotelAddCommand;
import kr.hotel.lahan.command.LCommand;
import kr.hotel.lahan.command.NoticeAddCommand;
import kr.hotel.lahan.command.NoticeDeleteCommand;
import kr.hotel.lahan.command.NoticeListCommand;
import kr.hotel.lahan.command.NoticeModifyCommand;
import kr.hotel.lahan.command.NoticeViewCommand;
import kr.hotel.lahan.dao.HotelDao;
import kr.hotel.lahan.dao.NoticeDao;
import kr.hotel.lahan.dto.NoticeDto;
import kr.hotel.lahan.util.Constant;

@Controller
public class AdminController {
	
	LCommand command = null;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
public SqlSession sqlSession;
	

	@Autowired
	public AdminController(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
        Constant.hotelDao = sqlSession.getMapper(HotelDao.class);
      
           
	}
	
	@RequestMapping("/admin/admin.do")
	public String adminmain(Model model) {
		 command = new AskListCommand();
	        command.execute(model);
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
	@RequestMapping("/admin/hoteladd.do")
	public String adminhoteladd(Model model) {
		System.out.println("호텔추가 화면");
		return "/admin/admin_hotel_add";
	}
	
	
	 @RequestMapping("/admin/hoteladding.do") 
	 public String hoteladd(HttpServletRequest request, Model model) {
	  System.out.println("호텔추가_DB"); 
	  model.addAttribute("request",request); 
	  command = new HotelAddCommand();
	  System.out.println("호텔추가_DB2"); 
	  command.execute(model);
	 
	 return "redirect:/admin/hotel.do"; }
	 
	
	@RequestMapping("/admin/product.do")
	public String adminproduct(Model model) {
		System.out.println("상품관리 화면");
		return "/admin/admin_product";
	}
	
	
	

}
