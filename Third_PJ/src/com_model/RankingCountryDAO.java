package com_model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RankingCountryDAO {
	
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
	
	public ArrayList<RankingCountryDTO> countRankingCountry(String rcountry) {
		ArrayList<RankingCountryDTO> RClist = new ArrayList<RankingCountryDTO>();
		
		RankingCountryDTO rankingCountrydto = null;
		
		conn();
		
		try {
			String sql = "select rank() over (order by MAX(b.user_accuracy) desc) as rank, a.profile_img, a.nickname, max(b.user_accuracy) as user_accuracy, REGEXP_REPLACE(LISTAGG(d.emblem_filename, ',') WITHIN GROUP(ORDER BY d.emblem_filename), '([^,]+)(,\\1)*(,|$)', '\\1\\3') emblem from members a left join mydanceinfos b on a.id = b.id left join emblems c on a.id = c.id left join embleminfos d on c.emblem_code = d.emblem_code where a.country =? and rownum <=30 group by  a.nickname, a.profile_img order by rank";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, rcountry);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int rank = rs.getInt(1);
				String proImg = rs.getString(2);
				String nickname = rs.getString(3);
				int accuracy = rs.getInt(4);
				String emblem = rs.getString(5);
				
				rankingCountrydto = new RankingCountryDTO(rank, proImg, nickname, accuracy, emblem);
				RClist.add(rankingCountrydto);

			};
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return RClist;
	}
	
	public RankingCountryDTO showCRanking(String rcountry) {
		
	RankingCountryDTO rankingCountrydto = null;
		
		conn();
		
		try {
			
			String sql = "select rank() over (order by MAX(b.user_accuracy) desc) as rank, a.profile_img, a.nickname, max(b.user_accuracy) as user_accuracy, REGEXP_REPLACE(LISTAGG(d.emblem_filename, ',') WITHIN GROUP(ORDER BY d.emblem_filename), '([^,]+)(,\\1)*(,|$)', '\\1\\3') emblem from members a left join mydanceinfos b on a.id = b.id left join emblems c on a.id = c.id left join embleminfos d on c.emblem_code = d.emblem_code where a.country =? and rownum <=30 group by  a.nickname, a.profile_img order by rank";			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, rcountry);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int rank = rs.getInt(1);
				String proImg = rs.getString(2);
				String nickname = rs.getString(3);
				int accuracy = rs.getInt(4);
				String emblem = rs.getString(5);
				
				rankingCountrydto = new RankingCountryDTO(rank, proImg, nickname, accuracy, emblem);
				
			};
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return rankingCountrydto;
		
	}
	
	
	public ArrayList<RankingCountryDTO> showSum() {
		ArrayList<RankingCountryDTO> CVlist = new ArrayList<RankingCountryDTO>();
		
		RankingCountryDTO rankingCVdto = null;
		
		conn();
		
		try {
			String sql = "select rank() over(order by sum(user_accuracy) desc) as rank, test.country, sum(user_accuracy) as user_accuracy from (select a.nickname, a.country, max(b.user_accuracy) as user_accuracy from members a join mydanceinfos b on a.id=b.id group by a.nickname, a.country) test where rownum <=30 group by test.country";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int rank = rs.getInt(1);
				String rcountry = rs.getString(2);
				int cRSum = rs.getInt(3);
				
				rankingCVdto = new RankingCountryDTO(rank, rcountry, cRSum);
				CVlist.add(rankingCVdto);

			};
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return CVlist;
	}
	
	
}
