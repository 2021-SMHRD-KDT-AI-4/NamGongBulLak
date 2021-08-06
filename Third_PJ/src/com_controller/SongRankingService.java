package com_controller;

import java.awt.List;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com_model.MemberDTO;
import com_model.SongDAO;
import com_model.SongDTO;

@WebServlet("/SongRankingService")
public class SongRankingService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("EUC-KR");
		String album_file_name=request.getParameter("album_file_name");
		String song_title=request.getParameter("song_title");
		String song_singer=request.getParameter("song_singer");
		String album_name=request.getParameter("album_name");
		
		SongDTO dto = new SongDTO(album_file_name,song_title,song_singer,album_name);
		SongDAO dao = new SongDAO();
		
		ArrayList<SongDTO> songlist = dao.songlist(); 
		
		 if (songlist != null) {
			 System.out.println("노래 불러오기");
		 }else {
			 System.out.println("노래 없다!!");
		 }
	}

}
