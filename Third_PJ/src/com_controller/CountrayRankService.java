package com_controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import com_model.RankingCountryDAO;
import com_model.RankingCountryDTO;
import com_model.RankingSongDAO;
import com_model.RankingSongDTO;

@WebServlet("/CountrayRankService")
public class CountrayRankService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String rcountry = request.getParameter("country");
		System.out.println(rcountry);
		RankingCountryDTO dto = new RankingCountryDTO(rcountry);
		RankingCountryDAO dao = new RankingCountryDAO();
		
		ArrayList<RankingCountryDTO> cnt = dao.countRankingCountry(rcountry);
		
		if(cnt.size() > 0) {
			System.out.println("나라노래 리스트성공");
			ArrayList<RankingCountryDTO> RClist = dao.countRankingCountry(rcountry);
			PrintWriter out = response.getWriter();
			Gson gson = new Gson();
			String result = gson.toJson(RClist);
			out.println(result);
			
			
		}else {
			System.out.println("나라노래 리스트실패");
		}
		
	}

}
