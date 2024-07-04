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
        String id = request.getParameter("id");
        String hotel = request.getParameter("hotel");
        String sort = request.getParameter("sort");
        String title = request.getParameter("title");
        String contents = request.getParameter("contents");
        String reply = request.getParameter("reply");
        

        AskDao dao = Constant.askDao;
		/* dao.replyShape(bGroup, bStep); */
        dao.reply(board_num, id, hotel, sort, title, contents, reply);
    }
}
