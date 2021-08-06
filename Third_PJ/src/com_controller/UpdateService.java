package com_controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com_model.MemberDAO;
import com_model.MemberDTO;

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("EUC-KR");
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String nickname = request.getParameter("nickname");
		 
		String country = request.getParameter("country");
		String share_agree = request.getParameter("share_agree");

	    MemberDTO dto = new MemberDTO(id, pw, nickname, country, share_agree);
	    MemberDAO dao = new MemberDAO();
	    
	    int cnt = dao.update(dto);

	    if (cnt > 0) {
	        System.out.println("회원정보 수정에 성공하셨습니다");
	        session.setAttribute("info", dto);
	        response.sendRedirect("Main.jsp");
	    }else {
	        System.out.println("회원정보 수정에 실패하셨습니다!!");
	        //response.sendRedirect("update.jsp");
	    }
		
	}

}

