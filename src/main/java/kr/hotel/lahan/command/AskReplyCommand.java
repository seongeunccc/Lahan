package kr.hotel.lahan.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.hotel.lahan.dao.AskDao;
import kr.hotel.lahan.util.Constant;


public class AskReplyCommand implements LCommand {

    @Override
    public void execute(Model model) {
        Map<String, Object> map = model.asMap();
        HttpServletRequest request = (HttpServletRequest) map.get("request");

        int board_num = Integer.parseInt(request.getParameter("board_num"));
        String reply = request.getParameter("reply");
        System.out.println("´äº¯ : " + reply);

        AskDao dao = Constant.askDao;
		/* dao.replyShape(bGroup, bStep); */
        dao.reply(board_num, reply);
    }
}
