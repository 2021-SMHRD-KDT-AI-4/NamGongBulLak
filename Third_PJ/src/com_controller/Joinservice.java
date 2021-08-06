package com_controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com_model.MemberDAO;
import com_model.MemberDTO;

@WebServlet("/JoinService")
public class Joinservice extends HttpServlet {
	private static final long serialVersionUID = 1L;


		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			request.setCharacterEncoding("EUC-KR");
			
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String nickname = request.getParameter("nickname"); 
			String country = request.getParameter("country");
			String share_agree = request.getParameter("share_agree");
			
			System.out.println(share_agree);
			
			
			MemberDTO dto = new MemberDTO(id, pw, nickname, country, share_agree);
			MemberDAO dao = new MemberDAO();
			System.out.println(dto.getShare_agree());
			
			int cnt = dao.join(dto);
			
			if(cnt > 0) {
				System.out.println("가입 성공");
				response.sendRedirect("login.jsp");
			}else {
				System.out.println("가입 실패");
				response.sendRedirect("join.jsp");
			}
		
		}
	}
