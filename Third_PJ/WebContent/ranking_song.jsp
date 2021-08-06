<%@page import="com_model.SongDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com_model.SongDAO"%>
<%@page import="com_model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- ����Ʈ -->
<link rel="stylesheet" href="./static/css/style.css" />
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">   
        $(document).ready(function() {
			$("#navi").load("./navigation.html");
		});
	</script>
<style>
table, td, th {
  border : 1px solid black;
  border-collapse : collapse;
};
</style>
<title>SongRanking</title>
</head>
<body>
	<% MemberDTO info = (MemberDTO)session.getAttribute("info"); %>
	<%
SongDAO dao = new SongDAO();
ArrayList<SongDTO> songlist = dao.songlist();
%>
	<!--ArrayList<SongDTO> songlist = dao.songlist();   -->
	<div
		style="background-color: rgba(0, 0, 0, 0.5); width: 100%; height: 100vh;">
		<!-- ��� �׺���̼� -->
		<div id="navi"></div>
		<!-- ���� ���� -->
		<div style="height: 1rem;"></div>
		<div
			style="height: 51rem; margin: 0 7rem; display: flex; flex-direction: row;">
			<div style="width: 8.25rem;">
				<div style="height: 20rem;"></div>
				<!-- �뷡��, ������ ���� ��ư -->
				<input type="button" value="Song"
					style="margin-bottom: 2rem; width: 6.25rem;"> <input
					type="button" value="Country"
					style="margin-bottom: 2rem; width: 8rem;">
			</div>
			<div style="width: 38.25rem;">
				<div style="height: 17.5rem;">
					<div style="height: 100%; display: flex; flex-direction: row;">
						<div style="width: 11.25rem;">
							<div
								style="height: 12.5rem; display: flex; align-items: center; justify-content: center;">
								<!-- 2�� ������ ���� -->
								<img src="./data/profile_image/iu3.jpg"
									style="height: 11.25rem; width: 11.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">
							</div>
							<div
								style="height: 5rem; display: flex; align-items: center; justify-content: center;">
								<img src="./static/img/gold_medal.png" style="height: 2.5rem;">
								<!-- 2�� �г��� -->

								�ٷ�
							</div>
						</div>
						<div style="width: 17rem;">
							<div
								style="height: 12.5rem; display: flex; align-items: center; justify-content: center;">
								<!-- 1�� ������ ���� -->
								<img src="./data/profile_image/iu3.jpg"
									style="height: 12.5rem; width: 12.5rem; border: 0.0625rem solid #fff; border-radius: 50%;">
							</div>
							<div
								style="height: 5rem; display: flex; align-items: center; justify-content: center;">
								<img src="./static/img/gold_medal.png" style="height: 2.5rem;">
								<!-- 1�� �г��� -->
								û����
							</div>
						</div>
						<div style="width: 10rem;">
							<div
								style="height: 12.5rem; display: flex; align-items: center; justify-content: center;">
								<!-- 3�� ������ ���� -->
								<img src="./data/profile_image/iu3.jpg"
									style="height: 10rem; width: 10rem; border: 0.0625rem solid #fff; border-radius: 50%;">
							</div>
							<div
								style="height: 5rem; display: flex; align-items: center; justify-content: center;">
								<img src="./static/img/gold_medal.png" style="height: 2.5rem;">
								<!-- 3�� �г��� -->
								���ݺ���
							</div>
						</div>
					</div>
				</div>
				<div>


					<!-- ���̺� -->
					<div style="height: 33.5rem; font-family: 'GmarketSansTTFBold'; background-color: rgba(207, 207, 207, 0.5); color: black; overflow: auto;">
						<table style="width: -webkit-fill-available; height: 33.5rem; margin: 0px -0.5rem;" border=0px">
						<!-- ���̺� ���� -->
							<tr>
								<td style="width: 100px; height: 75px;">��ȣ</td>
								<td colspan="4">������</td>
							</tr>
							</div>
							<% for(int i=0; i<songlist.size(); i++) { %>
							<!-- ���̺� ���� -->
							<div style="font-size: 2rem; display: grid; grid-template-columns: 5rem 8.75rem 18.25rem;">
							<tr>
								<td style="font-size: 1.2rem;"><%= i+1 %></td>
								<!-- �ٹ� �̹��� -->
								<!--<img src="./static/img/���϶�.jpg" style="height: 5rem; border: 0.0625rem solid #fff;">-->
								<td style="height: 5rem; border: 0.0625rem solid #fff;"><%= songlist.get(i).getAlbum_file_name() %></td>
								<!-- �뷡 ����/����/�ٹ��� -->
								<td style="font-size: 1.2rem;"><%= songlist.get(i).getSong_title() %></td>
								<td style="font-size: 1.2rem;"><%= songlist.get(i).getSong_singer() %></td>
								<td style="font-size: 1.2rem;"><%= songlist.get(i).getAlbum_name() %></td>
								<% } %>
							</tr>
						</table>



					</div>

				</div>
			</div>
			<div style="width: 57rem; margin-left: 2.5rem;">
				<!-- ���̺� -->
				
				<div style="height: 51rem; width: 57rem; background-color: rgba(207, 207, 207, 0.5); color: black; overflow: auto;">
					<table style="width: -webkit-fill-available;  margin: 0px -0.5rem;" border=0px">
					<!-- ���̺� ���� -->
					<tr>
						<td style="width: 100px; height: 75px;">����</td>
						<td colspan="2">������</td>
						<td>�г���</td>
						<td>����</td>
						<td>����</td>
					</tr>
					</div>
					
					<% %>
					
					<!-- ���̺� ���� -->
					<div style="font-size: 2rem; display: grid; grid-template-columns: 5rem 9.75rem 21.25rem 5rem 14.75rem;">
					<tr>
						<td><% %></td>
						<td style="height: 6.25rem; width: 6.25rem; border: 0.0625rem solid #fff; border-radius: 50%;"><% %></td>
						<td><% %></td>
						<td><% %></td>
						<td style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem; height: 3.75rem; width: 3.75rem;"><% %></td>
						<% %>
					</tr>
						
						
						<!-- ���� -->
						
						<!-- ������ ���� -->
						<div>
							<img src="./data/profile_image/iu3.jpg"
								style="height: 6.25rem; width: 6.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">
						</div>
						<!-- �г��� -->
						
						<!-- ���� -->
						
						<!-- ���� -->
						<div
							style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;">
							<img src="./static/img/gold_medal.png"
								style="height: 3.75rem; width: 3.75rem;"> <img
								src="./static/img/gold_medal.png"
								style="height: 3.75rem; width: 3.75rem;"> <img
								src="./static/img/gold_medal.png"
								style="height: 3.75rem; width: 3.75rem;">
						</div>
						
					</div>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
