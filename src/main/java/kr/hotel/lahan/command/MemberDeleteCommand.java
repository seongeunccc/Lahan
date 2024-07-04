package kr.hotel.lahan.command;

import java.text.SimpleDateFormat;
import java.util.Date;
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
    
     String id = request.getParameter("id");
     String withdraw = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
     System.out.println("id : " + id);
     System.out.println("withdraw : " + withdraw);
     JoinDao dao = Constant.joinDao;
 
     dao.withdraw(id, withdraw);
 }
}