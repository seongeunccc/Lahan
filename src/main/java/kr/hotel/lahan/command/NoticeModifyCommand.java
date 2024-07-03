package kr.hotel.lahan.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.hotel.lahan.dao.NoticeDao;
import kr.hotel.lahan.util.Constant;

public class NoticeModifyCommand implements LCommand {

    @Override
    public void execute(Model model) {
        Map<String, Object> map = model.asMap();
        HttpServletRequest request = (HttpServletRequest) map.get("request");

        int board_num = Integer.parseInt(request.getParameter("board_num"));
        String title = request.getParameter("title");
        String contents = request.getParameter("contents");

        NoticeDao dao = Constant.noticeDao;

        // �α׷� Ȯ��
        System.out.println("board_num: " + board_num);
        System.out.println("title: " + title);
        System.out.println("contents: " + contents);

        // ������ �Ķ���͵��� ����Ͽ� �Խù��� �����մϴ�.
        dao.modify(board_num, title, contents);
    }
}
