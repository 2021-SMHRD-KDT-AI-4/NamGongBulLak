package com_model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import com_model.SongDTO;

public class SongDAO {
	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	private MemberDTO info = null;

	private void conn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<SongDTO> songlist() {
		ArrayList<SongDTO> songlist = new ArrayList<SongDTO>();
		
		conn();
		try {
		String sql="select album_file_name, song_title, song_singer, album_name from dance_info order by album_name desc";
		psmt = conn.prepareStatement(sql);
		rs=psmt.executeQuery();
		
		while(rs.next()) {
			String album_file_name = rs.getString("album_file_name");
			String song_title = rs.getString("song_title");
			String song_singer = rs.getString("song_singer");
			String album_name = rs.getString("album_name");
			SongDTO dto = new SongDTO(album_file_name, song_title, song_singer, album_name);
			songlist.add(dto);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		close();
	}	
	
	
	return songlist;
}
}
