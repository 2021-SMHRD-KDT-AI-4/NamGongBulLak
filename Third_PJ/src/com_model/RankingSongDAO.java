package com_model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RankingSongDAO {
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	  
	private void conn() {
	      
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
	         
	        String db_url = "jdbc:oracle:thin:@210.223.239.218:1521:xe";
	        String db_id = "hr";
	        String db_pw = "hr";
	         
	        conn = DriverManager.getConnection(db_url, db_id, db_pw); 
	         
	    } catch (ClassNotFoundException e) {
	         e.printStackTrace();
	    } catch (SQLException e) {
	         e.printStackTrace();
	    }
	      
	}
	
	private void close() {
	   try {
	      if(rs!=null){
	         rs.close();
	      }
	      if(psmt!=null){
	         psmt.close();
	      }
	      if(conn!=null){
	         conn.close();
	      }
	   } catch (SQLException e) {
	      e.printStackTrace();
	   }
	}
	
	public ArrayList<RankingSongDTO> showRankingSong(String song_title) {
		ArrayList<RankingSongDTO> RSlist = new ArrayList<RankingSongDTO>();
		
		RankingSongDTO rankingSongdto = null;
		
		conn();
		
		try {
			String sql = "select dense_rank() over (order by MAX(a.user_accuracy) desc) as rank, b.profile_img, b.nickname, max(a.user_accuracy) as accuracy, REGEXP_REPLACE(LISTAGG(d.emblem_filename, ',') WITHIN GROUP(ORDER BY d.emblem_filename), '([^,]+)(,\\1)*(,|$)', '\\1\\3') emblem,a.song_title from mydanceinfos a left join members b on a.id = b.id left join emblems c on b.id = c.id left join embleminfos d on c.emblem_code = d.emblem_code where a.song_title = ? group by b.nickname, b.profile_img, a.song_title, d.emblem_filename";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, song_title);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int rank = rs.getInt(1);
				String proImg = rs.getString(2);
				String nickname = rs.getString(3);
				int accuracy = rs.getInt(4);
				String emblem = rs.getString(5);
				
				rankingSongdto = new RankingSongDTO(rank, proImg, nickname, accuracy, emblem);
				RSlist.add(rankingSongdto);

			};
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return RSlist;
	}
	
	public RankingSongDTO showRanking(String song_title) {
		
		RankingSongDTO rankingSongdto = null;
		
		conn();
		
		try {
			String sql = "select dense_rank() over (order by MAX(a.user_accuracy) desc) as rank, b.profile_img, b.nickname, max(a.user_accuracy) as accuracy, REGEXP_REPLACE(LISTAGG(d.emblem_filename, ',') WITHIN GROUP(ORDER BY d.emblem_filename), '([^,]+)(,\\1)*(,|$)', '\\1\\3') emblem,a.song_title from mydanceinfos a left join members b on a.id = b.id left join emblems c on b.id = c.id left join embleminfos d on c.emblem_code = d.emblem_code where a.song_title = ? group by b.nickname, b.profile_img, a.song_title, d.emblem_filename";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, song_title);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int rank = rs.getInt(1);
				String proImg = rs.getString(2);
				String nickname = rs.getString(3);
				int accuracy = rs.getInt(4);
				String emblem = rs.getString(5);
				
				rankingSongdto = new RankingSongDTO(rank, proImg, nickname, accuracy, emblem);
				
			};
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return rankingSongdto;
	}
	
	
}
