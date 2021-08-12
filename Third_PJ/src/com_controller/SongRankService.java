package com_controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import com_model.RankingSongDAO;
import com_model.RankingSongDTO;


@WebServlet("/SongRankService")
public class SongRankService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String song_title = request.getParameter("songtitle");
//		System.out.println(song_title);
		RankingSongDTO dto = new RankingSongDTO(song_title);
		RankingSongDAO dao = new RankingSongDAO();
		
		ArrayList<RankingSongDTO> cnt = dao.showRankingSong(song_title);
		
		if(cnt.size() > 0) {
			System.out.println("노래 리스트성공");
			ArrayList<RankingSongDTO> song = dao.showRankingSong(song_title);
			PrintWriter out = response.getWriter();
			Gson gson = new Gson();
			String result = gson.toJson(song);
			out.println(result);
			
			
		}else {
			System.out.println("노래 리스트실패");
		}
		
		
		
		
	}

}
