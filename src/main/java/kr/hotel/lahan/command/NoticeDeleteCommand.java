package kr.hotel.lahan.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.hotel.lahan.dao.NoticeDao;
import kr.hotel.lahan.util.Constant;

public class NoticeDeleteCommand implements LCommand {

 @Override
 public void execute(Model model) {
     Map<String, Object> map = model.asMap();
      HttpServletRequest request = (HttpServletRequest) map.get("request");

     int board_num = Integer.parseInt(request.getParameter("board_num"));
     NoticeDao dao = Constant.noticeDao;
 
     dao.delete(board_num);
 }
}