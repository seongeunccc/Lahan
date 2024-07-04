package kr.hotel.lahan;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.hotel.lahan.command.AskAddCommand;
import kr.hotel.lahan.command.AskDeleteCommand;
import kr.hotel.lahan.command.AskListCommand;
import kr.hotel.lahan.command.AskViewCommand;
import kr.hotel.lahan.command.LCommand;
import kr.hotel.lahan.command.NoticeAddCommand;
import kr.hotel.lahan.command.NoticeDeleteCommand;
import kr.hotel.lahan.command.NoticeListCommand;
import kr.hotel.lahan.command.NoticeModifyCommand;
import kr.hotel.lahan.command.NoticeViewCommand;
import kr.hotel.lahan.dao.AskDao;
import kr.hotel.lahan.dao.HotelDao;
import kr.hotel.lahan.dao.NoticeDao;
import kr.hotel.lahan.util.Constant;

@Controller
public class BoardController {
	LCommand command = null;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
public SqlSession sqlSession;
	

	@Autowired
	public BoardController(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
        Constant.noticeDao = sqlSession.getMapper(NoticeDao.class);
        Constant.askDao = sqlSession.getMapper(AskDao.class);
           
	}
	
	@RequestMapping("/admin/notice.do")
	public String adminnotice(Model model) {
		command = new NoticeListCommand();
		command.execute(model);

		System.out.println("어드민 공지사항 화면");
		return "/admin/admin_notice";
	}
	@RequestMapping("/admin/noticeadd.do")
	public String adminnoticeadd(Model model) {
		System.out.println("어드민 공지사항 등록 화면");
		return "/admin/admin_notice_add";
	}
	
	@RequestMapping("/admin/noticeadding.do") 
	 public String noticeadd(HttpServletRequest request, Model model) {
	  System.out.println("공지사항 추가_DB"); 
	  model.addAttribute("request",request);
	  command = new NoticeAddCommand();
	  System.out.println("공지사항_DB2"); 
	  command.execute(model); 
	 return "redirect:/admin/notice.do"; }
	
	@RequestMapping("/admin/noticeview.do") 
	 public String contentView(HttpServletRequest request, Model model) {
	  System.out.println("공지사항 확인"); 
	 model.addAttribute("request",request);
	command = new NoticeViewCommand();
	  System.out.println("공지사항 확인2"); 
	command.execute(model); 
	 return "/admin/admin_notice_detail"; }
	
	
	 @RequestMapping("/admin/noticemodify.do")
	 public String modifyview( Model model, HttpServletRequest request) {
		 int board_num = Integer.parseInt(request.getParameter("board_num"));
	     String title = request.getParameter("title");
	     String contents = request.getParameter("contents");     
	     model.addAttribute("board_num", board_num);
	     model.addAttribute("title", title);
	     model.addAttribute("contents", contents);
	     return "/admin/admin_notice_modify";
	 }
	 
	 @RequestMapping("/admin/noticemodifing.do")
	 public String modify(HttpServletRequest request, Model model) {
	     System.out.println("modify()");
	     model.addAttribute("request", request);
	     command = new NoticeModifyCommand();
	     command.execute(model);
	     return "redirect:/admin/notice.do";
	 }
	
	 @RequestMapping("/admin/delete.do")
	 public String delete(HttpServletRequest request, Model model) {
	     System.out.println("delete()");
	     model.addAttribute("request", request);
	     command = new NoticeDeleteCommand();
	     command.execute(model);
	     return "redirect:/admin/notice.do";
	 }
	 
	
	@RequestMapping("/admin/ask.do")
	public String adminmqanda(Model model) {
		System.out.println("어드민 1:1문의 화면");
		command = new AskListCommand();
		command.execute(model);
		return "/admin/admin_ask";
	}
	
	@RequestMapping("/admin/askview.do") 
	 public String askcontentView(HttpServletRequest request, Model model) {
	  System.out.println("공지사항 확인"); 
	 model.addAttribute("request",request);
	command = new AskViewCommand();
	  System.out.println("공지사항 확인2"); 
	command.execute(model); 
	 return "/admin/admin_ask_detail"; }
	
	@RequestMapping("/admin/askdelete.do")
	 public String askdelete(HttpServletRequest request, Model model) {
	     System.out.println("delete()");
	     model.addAttribute("request", request);
	     command = new AskDeleteCommand();
	     command.execute(model);
	     return "redirect:/admin/ask.do";
	 }
	
	@RequestMapping("/ask/add.do")
	public String testaskadd(Model model) {
		System.out.println("1:1문의 등록 화면");
		return "/admin/test_ask_add";
	}
	
	@RequestMapping("/ask/adding.do") 
	 public String askadd(HttpServletRequest request, Model model) {
	  model.addAttribute("request",request);
	  command = new AskAddCommand(); 
	  command.execute(model); 
	 return "redirect:/admin/ask.do"; }



}
