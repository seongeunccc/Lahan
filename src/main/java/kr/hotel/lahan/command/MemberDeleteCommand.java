package kr.hotel.lahan.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.hotel.lahan.dao.AskDao;
import kr.hotel.lahan.dao.JoinDao;
import kr.hotel.lahan.dao.NoticeDao;
import kr.hotel.lahan.util.Constant;

public class MemberDeleteCommand implements LCommand {

 @Override
 public void execute(Model model) {
     Map<String, Object> map = model.asMap();
      HttpServletRequest request = (HttpServletRequest) map.get("request");

     String id = request.getParameter("board_num");
     JoinDao dao = Constant.joinDao;
 
     dao.delete(id);
 }
}