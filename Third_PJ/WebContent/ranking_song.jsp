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
<!-- 임포트 -->
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
		<!-- 상단 네비게이션 -->
		<div id="navi"></div>
		<!-- 메인 내용 -->
		<div style="height: 1rem;"></div>
		<div
			style="height: 51rem; margin: 0 7rem; display: flex; flex-direction: row;">
			<div style="width: 8.25rem;">
				<div style="height: 20rem;"></div>
				<!-- 노래별, 국가별 순위 버튼 -->
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
								<!-- 2위 프로필 사진 -->
								<img src="./data/profile_image/iu3.jpg"
									style="height: 11.25rem; width: 11.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">
							</div>
							<div
								style="height: 5rem; display: flex; align-items: center; justify-content: center;">
								<img src="./static/img/gold_medal.png" style="height: 2.5rem;">
								<!-- 2위 닉네임 -->

								바로
							</div>
						</div>
						<div style="width: 17rem;">
							<div
								style="height: 12.5rem; display: flex; align-items: center; justify-content: center;">
								<!-- 1위 프로필 사진 -->
								<img src="./data/profile_image/iu3.jpg"
									style="height: 12.5rem; width: 12.5rem; border: 0.0625rem solid #fff; border-radius: 50%;">
							</div>
							<div
								style="height: 5rem; display: flex; align-items: center; justify-content: center;">
								<img src="./static/img/gold_medal.png" style="height: 2.5rem;">
								<!-- 1위 닉네임 -->
								청춘은
							</div>
						</div>
						<div style="width: 10rem;">
							<div
								style="height: 12.5rem; display: flex; align-items: center; justify-content: center;">
								<!-- 3위 프로필 사진 -->
								<img src="./data/profile_image/iu3.jpg"
									style="height: 10rem; width: 10rem; border: 0.0625rem solid #fff; border-radius: 50%;">
							</div>
							<div
								style="height: 5rem; display: flex; align-items: center; justify-content: center;">
								<img src="./static/img/gold_medal.png" style="height: 2.5rem;">
								<!-- 3위 닉네임 -->
								지금부터
							</div>
						</div>
					</div>
				</div>
				<div>


					<!-- 테이블 -->
					<div style="height: 33.5rem; font-family: 'GmarketSansTTFBold'; background-color: rgba(207, 207, 207, 0.5); color: black; overflow: auto;">
						<table style="width: -webkit-fill-available; height: 33.5rem; margin: 0px -0.5rem;" border=0px">
						<!-- 테이블 제목 -->
							<tr>
								<td style="width: 100px; height: 75px;">번호</td>
								<td colspan="4">곡정보</td>
							</tr>
							</div>
							<% for(int i=0; i<songlist.size(); i++) { %>
							<!-- 테이블 내용 -->
							<div style="font-size: 2rem; display: grid; grid-template-columns: 5rem 8.75rem 18.25rem;">
							<tr>
								<td style="font-size: 1.2rem;"><%= i+1 %></td>
								<!-- 앨범 이미지 -->
								<!--<img src="./static/img/라일락.jpg" style="height: 5rem; border: 0.0625rem solid #fff;">-->
								<td style="height: 5rem; border: 0.0625rem solid #fff;"><%= songlist.get(i).getAlbum_file_name() %></td>
								<!-- 노래 제목/가수/앨범명 -->
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
				<!-- 테이블 -->
				
				<div style="height: 51rem; width: 57rem; background-color: rgba(207, 207, 207, 0.5); color: black; overflow: auto;">
					<table style="width: -webkit-fill-available;  margin: 0px -0.5rem;" border=0px">
					<!-- 테이블 제목 -->
					<tr>
						<td style="width: 100px; height: 75px;">순위</td>
						<td colspan="2">프로필</td>
						<td>닉네임</td>
						<td>점수</td>
						<td>엠블럼</td>
					</tr>
					</div>
					
					<% %>
					
					<!-- 테이블 내용 -->
					<div style="font-size: 2rem; display: grid; grid-template-columns: 5rem 9.75rem 21.25rem 5rem 14.75rem;">
					<tr>
						<td><% %></td>
						<td style="height: 6.25rem; width: 6.25rem; border: 0.0625rem solid #fff; border-radius: 50%;"><% %></td>
						<td><% %></td>
						<td><% %></td>
						<td style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem; height: 3.75rem; width: 3.75rem;"><% %></td>
						<% %>
					</tr>
						
						
						<!-- 순위 -->
						
						<!-- 프로필 사진 -->
						<div>
							<img src="./data/profile_image/iu3.jpg"
								style="height: 6.25rem; width: 6.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">
						</div>
						<!-- 닉네임 -->
						
						<!-- 점수 -->
						
						<!-- 엠블럼 -->
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
