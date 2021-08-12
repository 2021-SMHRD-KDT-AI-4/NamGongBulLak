package com_model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DanceDAO {
	
	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	private MemberDTO info = null;

	private void conn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@210.223.239.218:1521:xe";
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
	
	public ArrayList<DanceDTO> songlist() {
		ArrayList<DanceDTO> songlist = new ArrayList<DanceDTO>();
		
		conn();
		try {
		String sql="select album_filename, song_title, song_singer, album_title, song_seq from DANCEINFOS ORDER BY song_seq";
		psmt = conn.prepareStatement(sql);
		rs=psmt.executeQuery();
		
		while(rs.next()) {
			String album_filename = rs.getString("album_filename");
			String song_title = rs.getString("song_title");
			String song_singer = rs.getString("song_singer");
			String album_tile = rs.getString("album_title");
			int song_seq = rs.getInt("song_seq");
			DanceDTO dto = new DanceDTO(song_title, song_singer, album_filename, album_tile, song_seq);
			songlist.add(dto);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		close();
	}	
	
	return songlist;
	}
	
	public DanceDTO showDance() {
		
		DanceDTO Dancedto = null;
		
		conn();
		
		try {
			String sql = "select * from DANCEINFOS";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String song_title = rs.getString(1);
				String song_singer = rs.getString(2);
				String song_filepath = rs.getString(3);
				int song_price = rs.getInt(4);
				String album_filename = rs.getString(5);
				String album_title = rs.getString(6);
				String release_date = rs.getString(7);
				int song_seq = rs.getInt(8);
				String difficulty = rs.getString(9);
				
				Dancedto = new DanceDTO(song_title, song_singer, song_filepath, song_price, album_filename, album_title, release_date, song_seq, difficulty);
			};
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return Dancedto;
	}
	
	
	
}
