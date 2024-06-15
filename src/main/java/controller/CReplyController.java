package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.CReplyDAO;
import dto.CReplyDTO;

@WebServlet("*.reply")
public class CReplyController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		CReplyDAO manager = CReplyDAO.getInstance();
		String cmd = request.getRequestURI();
		System.out.println("get:" + cmd);
		Gson g = new Gson();
		
		try {
			//유저게시판 글의 댓글 목록을 json으로 클라이언트에게 반환
			if(cmd.equals("/viewReple.reply")) {
				int seq = Integer.parseInt(request.getParameter("seq"));
				List<CReplyDTO> repleList = manager.viewRepleList(seq);
				
				String result = g.toJson(repleList);
				
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter pw = response.getWriter();
				pw.append(result);
				
			//유저게시판 글의 댓글 삭제
			}else if(cmd.equals("/delReple.reply")) {
				int seq = Integer.parseInt(request.getParameter("seq"));
				manager.delReple(seq);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		CReplyDAO manager = CReplyDAO.getInstance();
		String cmd = request.getRequestURI();
		System.out.println("post:" + cmd);
		Gson g = new Gson();
		
		try {
			//유저게시판 글에 댓글 추가
			if (cmd.equals("/addReple.reply")) {
//				HttpSession session = request.getSession();
//				String id = (String) session.getAttribute("loginID");
				String id = "SessionId";

				int parentSeq = Integer.parseInt(request.getParameter("parentSeq"));
				String content = request.getParameter("content");

				CReplyDTO rpl = new CReplyDTO(0, parentSeq, id, content, null, 0);
				manager.addReple(rpl);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}