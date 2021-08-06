package com_controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com_model.MemberDAO;

@WebServlet("/idcheckservice")
public class idcheckservice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");

		MemberDAO dao = new MemberDAO();
		
		boolean check = dao.idCheck(id);
		PrintWriter out = response.getWriter();
		out.print(check);
	}

}

