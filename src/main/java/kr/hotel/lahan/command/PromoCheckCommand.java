package kr.hotel.lahan.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import kr.hotel.lahan.dao.ReservationDao;


public class PromoCheckCommand implements RCommand{
	
	@Autowired
	private SqlSession sqlSession;
	private String proCode;
	
	public PromoCheckCommand(){
		
	}
	public PromoCheckCommand (SqlSession sqlSession){
		this.sqlSession =sqlSession;
	}
	public PromoCheckCommand (SqlSession sqlSession,String proCode){
		this.sqlSession =sqlSession;
		this.proCode = proCode;
	}
		
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String promoCode = request.getParameter("promoCode");
		
		
		ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
		dao.serchProcode(promoCode);
	}
	/*
	 * public ProCodeDto SerchPromo(String promoCode) {
	 * 
	 * }
	 */
}
