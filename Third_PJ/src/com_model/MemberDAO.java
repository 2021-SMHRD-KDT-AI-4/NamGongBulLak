package com_model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {

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

	public int join(MemberDTO dto) {
		int cnt = 0;
		conn();
		try {
			String sql = "insert into Member values(?,?,0,?,0,?,?)";
			psmt = conn.prepareStatement(sql);
			
			System.out.println(dto.getShare_agree());

			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getNickname());
			psmt.setString(4, dto.getCountry());			
			psmt.setString(5, dto.getShare_agree());			

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}

	public MemberDTO login(MemberDTO dto) {

		conn();

		try {

			String sql = "SELECT * FROM Member WHERE ID=? AND PW=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());

			rs = psmt.executeQuery();
			if (rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String nickname = rs.getString(3);
				String country = rs.getString(4);
				String share_Agree = rs.getString(5);
				
				info = new MemberDTO(id, pw, nickname, country, share_Agree);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return info;
	}

	public boolean idCheck(String id) {

		boolean check = false;

		conn();

		try {

			String sql = "SELECT * FROM Member WHERE ID=?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);

			rs = psmt.executeQuery();

			if (rs.next()) {
				check = true;
			} else {
				check = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return check;

	}

	public int update(MemberDTO dto) {

		int cnt = 0;

		conn();

		try {

			String sql = "update Member set PW=?, NICNAME=?, COUNTRY=? where ID=?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getPw());
			psmt.setString(2, dto.getNickname());
			psmt.setString(3, dto.getCountry());
			psmt.setString(4, dto.getId());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public int out(MemberDTO dto) {
		int cnt = 0;

		conn();

		try {

			String sql = "delete from Member";

			psmt = conn.prepareStatement(sql);

			cnt = psmt.executeUpdate();

			if (cnt > 0) {
				System.out.println("회원탈퇴 성공");
			} else {
				System.out.println("회원탈퇴 실패");
			}

			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
}
