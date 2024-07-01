package kr.hotel.lahan.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import kr.hotel.lahan.dao.JoinDao;

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
		
		System.out.println("추천아이디 뭐가들어오나 확인 : ");
		System.out.println(recomId);
		
		  if (!agreeEmail.equals("on")) {
	            agreeEmail = "off"; }
	
		
		JoinDao jdao=sqlSession.getMapper(JoinDao.class);
		jdao.joinCommand(id, pw, name, en_name, birth, phone, email, adrs, agreeEmail, recomId, proCode);
		
		HttpSession session = request.getSession(); //세선이 되나 확인해 봐야 함
		session.setAttribute("userid", id);
		
	}

}
