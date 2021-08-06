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

@WebServlet("/Loginservice")
public class Loginservice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("EUC-KR");
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		MemberDTO dto = new MemberDTO(id,pw);
		MemberDAO dao = new MemberDAO();
		
		MemberDTO info = dao.login(dto);
		   
		   if(info !=null) {
			//로그인 성공한 사람의 이름을 세션에 저장하시오.
			   HttpSession session = request.getSession();
			//세션의 생명주기 넣기
			   session.setMaxInactiveInterval(500);
			   session.setAttribute("info", info);
			   System.out.println("로그인 성공");
			   response.sendRedirect("main.html");
			  // response.sendRedirect("loginsuccess.jsp");
		   }else {
			   System.out.println("로그인 실패");
			   response.sendRedirect("login.jsp");
		   }
	}

}
