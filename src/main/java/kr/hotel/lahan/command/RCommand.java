package kr.hotel.lahan.command;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class RCommand {

	private SqlSession sqlSession;
	
	@Autowired
	public RCommand(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	
	
}
