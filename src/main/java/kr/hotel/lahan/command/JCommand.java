package kr.hotel.lahan.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import kr.hotel.lahan.dao.JoinDao;
import kr.hotel.lahan.dao.ProductDao;

@Component
public class JCommand {
	
	private SqlSession sqlSession;
	
	@Autowired
	public JCommand(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public void join(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String en_name = request.getParameter("en_name");
		int birth = Integer.parseInt(request.getParameter("birth"));
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String adrs = request.getParameter("adrs");
		
		String agreeEmail = request.getParameter("agreeEmail");
		String recomId = request.getParameter("recomId");
		String proCode = request.getParameter("proCode");	
		
		  if (!agreeEmail.equals("on")) {
	            agreeEmail = "off"; }
			
		JoinDao jdao=sqlSession.getMapper(JoinDao.class);
		jdao.joinCommand(id, pw, name, en_name, birth, phone, email, adrs, agreeEmail, recomId, proCode);
		
		HttpSession session = request.getSession(); //������ �ǳ� Ȯ���� ���� ��
		session.setAttribute("userid", id);
		
	}
	
	public int login(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		String id = request.getParameter("id");
		System.out.println(id);
		String pw = request.getParameter("pw");
		System.out.println(pw);
		int loginOX = -1;
		
		try {
		JoinDao jdao = sqlSession.getMapper(JoinDao.class);
		String conPw = jdao.loginCommand(id);
		
		if(conPw!=null) {
			if(conPw.equals(pw)) {
				loginOX = 1; // 로그인 성공
				System.out.println(loginOX);
				HttpSession session = request.getSession(); 
				session.setAttribute("id", id);
				if(id.equals("admin")) {  //아이디가 어드민이면 3을 반환
					loginOX=3;
					return loginOX;
				}
				return loginOX; }
			else loginOX = 0; //  비밀번호 틀림
			System.out.println(loginOX);	
				return loginOX;
			} else {
				loginOX = -1; // 아이디 없음
				System.out.println(loginOX);
				return loginOX;
			} 
			} catch (Exception e) {
				System.out.println("<h3>디비 연결 실패 <h3>");
				e.printStackTrace();
				loginOX = 2; // 디비연결 실패
				System.out.println(loginOX);
				return loginOX;
			}
				
	}
	
	public void memberinfo(Model model, String id) {
		
		JoinDao dao = sqlSession.getMapper(JoinDao.class);
		model.addAttribute("memberinfo", dao.memberinfo(id));
		
	}
	
	public String findId(String id) {
		System.out.println("J커멘드의 find id" + id);
		JoinDao dao = sqlSession.getMapper(JoinDao.class);
		String foundId = dao.findId(id);
		System.out.println("foundId 의 id : " + foundId);
		return foundId;
	}
	
	public void viewProduct(Model model) {		
	ProductDao dao = sqlSession.getMapper(ProductDao.class);
	model.addAttribute("list", dao.list());
}
	

}
