
<%@page import="com_model.RankingSongDTO"%>
<%@page import="com_model.RankingSongDAO"%>
<%@page import="com_model.DanceDTO"%>
<%@page import="com_model.DanceDAO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>SongRanking</title>
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
    <title>SongRanking</title>
    
    
 <script>
function getParameter(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
</script>
</head>
<body>
<% 
	DanceDAO Dancedao = new DanceDAO();
	DanceDTO Dancedto = Dancedao.showDance();
	ArrayList<DanceDTO> songlist = Dancedao.songlist();
	RankingSongDAO rsdao = new RankingSongDAO();
	String song_title= request.getParameter("song_title");
	RankingSongDTO rankingSongdto = rsdao.showRanking(song_title);
	ArrayList<RankingSongDTO> songrankinglist = rsdao.showRankingSong(song_title);
%>
	
    <div style="background-color: rgba(0,0,0,0.5); width: 100%; height: 100vh;">
        <!-- 상단 네비게이션 -->
        <div id="navi"></div>
        <!-- 메인 내용 -->
        <div style="height: 1rem;"></div>
        <div style="height: 51rem; margin: 0 7rem; display: flex; flex-direction: row;">
            <div style="width: 8.25rem;">
                <div style="height: 20rem;"></div>
                <!-- 노래별, 국가별 순위 버튼 -->
                <input type="button" value="Song" onclick="songbutton()" style="margin-bottom: 2rem; width: 6.25rem;">
                <input type="button" value="Country" onclick="countrybutton()" style="margin-bottom: 2rem; width: 8rem;">
            </div>
            <div style="width: 38.25rem;">
                <div style="height: 17.5rem;">
                    <div style="height: 100%; display: flex; flex-direction: row;">
                        <div style="width: 11.25rem;">
                            <div id="secimg" style="height: 12.5rem; display: flex; align-items: center; justify-content: center;">
                                <!-- 2위 프로필 사진 -->
                                <!-- <img src="./data/profile_image/iu3.jpg" id="secimg" style="height: 11.25rem; width: 11.25rem; border: 0.0625rem solid #fff; border-radius: 50%;"> -->
                            </div>
                            <div style="height: 5rem; display: flex; align-items: center; justify-content: center;">
                                <div id="secmedal"></div>
                                <div id="sec" style="font-size: 1.3rem;" id="sec"></div>
                            </div>
                        </div>
                        <div style="width: 17rem;">
                            <div id="feimg" style="height: 12.5rem; display: flex; align-items: center; justify-content: center;">
                                <!-- 1위 프로필 사진 -->
                               
                            </div>
                            <div style="height: 5rem; display: flex; align-items: center; justify-content: center;">
                                <div id="femedal"></div>
                                <!-- 1위 닉네임 -->
                                <div id="fe" style="font-size: 1.3rem;" id="sec"></div>
                            </div>
                        </div>
                        <div style="width: 10rem;">
                            <div id="thimg" style="height: 12.5rem; display: flex; align-items: center; justify-content: center;">
                                <!-- 3위 프로필 사진 -->
                               
                            </div>
                            <div style="height: 5rem; display: flex; align-items: center; justify-content: center;">
                                <div id="thmedal"></div>
                                <!-- 3위 닉네임 -->
                           		<div id="th" style="font-size: 1.3rem;" id="sec"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="height: 33.5rem;margin: 0 2.5rem;">
                    <!-- 테이블 -->
                    <div style="height: 33.5rem; background-color: rgba(207, 207, 207, 0.5); color: black; overflow:overlay;">
                        <!-- 테이블 제목 -->
                        <div style="font-size: 2rem; font-family: 'GmarketSansTTFBold'; display: grid; grid-template-columns: 5rem 8.75rem 18.25rem;">
                            <div>번호</div>
                            <div></div>
                            <div>곡정보</div>
                        </div>
                        <!-- 테이블 내용 -->
                        <div style="font-size: 2rem; display: grid; grid-template-columns: 5rem 8.75rem 18.25rem;">
                        <% for(int i=0; i<songlist.size(); i++) { %>
                            <!-- 번호 -->
                            <div><%= songlist.get(i).getSong_seq() %></div>
                            <!-- 앨범 이미지 -->
                            <div><img src="./static/img/<%= songlist.get(i).getAlbum_filename() %>" style="height: 5rem; border: 0.0625rem solid #fff;"></div>
                            <!-- 노래 제목/가수/앨범명 -->
                            <div>
                                <input style="font-family: 'GmarketSansTTFBold'; font-size: 2rem; background-color:transparent; outline:none; border:none;" type="button" id="songtitle<%= i %>" name="songtitle" value="<%= songlist.get(i).getSong_title() %>" onclick="songclick(<%=i%>)"><br>
                                <span style="font-size: 1.2rem;"><%= songlist.get(i).getAlbum_title() %></span>
                            </div>
             			<% } %>
                        </div>
                    </div>
                </div>
            </div>
            <div style="width: 57rem; margin-left: 2.5rem;">
                <!-- 테이블 -->
                <div style="height: 51rem; width: 57rem; background-color: rgba(207, 207, 207, 0.5); color: black; overflow:overlay;">
                    <!-- 테이블 제목 -->
                    <div style="font-size: 2rem; font-family: 'GmarketSansTTFBold'; display: grid; grid-template-columns: 5rem 9.75rem 21.25rem 5rem 14.75rem;">
                        <div>순위</div>
                        <div></div>
                        <div>닉네임</div>
                        <div>점수</div>
                        <div>엠블럼</div>
                    </div>
                    <!-- 테이블 내용 -->
                    <div id="songview" style="font-size: 2rem; display: grid; grid-template-columns: 5rem 9.75rem 21.25rem 5rem 4.9rem 4.9rem 4.9rem;">
	                	<div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;">
                        </div>    
	                </div>
                </div>
            </div>
        </div>
    </div>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
function songclick(num){
	var test = '';
	$.ajax({
		type : "post",
		data : {
			"songtitle" : $('#songtitle'+num).val()
		},
		url : "SongRankService",
		dataType: "JSON",
		success : function(data){
			console.log(data);
			$("#songview").html(data);
			for(var i = 0; i < data.length; i++){
				$("#songview").append('<div>'+data[i].rank+'</div>'); 
				$("#songview").append('<div><img src="./image/'+data[i].proImg+'" style="height: 6.25rem; width: 6.25rem; border: 0.0625rem solid #fff; border-radius: 50%;"></div>'); 
				$("#songview").append('<div>'+data[i].nickname+'</div>'); 
				$("#songview").append('<div>'+data[i].accuracy+'</div>'); 
				if(data[i].emblem == undefined) {
					$("#songview").append('<div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;"></div>');
					$("#songview").append('<div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;"></div>');
					$("#songview").append('<div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;"></div>');
				}else if(data[i].emblem.indexOf(',') == -1){
					$("#songview").append('<div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;"><img src="'+data[i].emblem+'" style="height: 3.75rem; width: 3.75rem;"></div>');
					$("#songview").append('<div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;"></div>');
					$("#songview").append('<div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;"></div>');
				
				}else {
					const emblems = data[i].emblem.split(",");
					for(var j = 0; j < emblems.length; j++) {
						$("#songview").append('<div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;"><img src="'+emblems[j]+'" style="height: 3.75rem; width: 3.75rem;"></div>');
					}
				}
			}
			if(data.length == 1){
				$("#sec").html('');
				$("#secimg").html('');
				$("#secmedal").html('');
				$("#fe").html(data[0].nickname);
				$("#feimg").html('<img src="./image/'+data[0].proImg+'" id="secimg" style="height: 11.25rem; width: 11.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">');
				$("#femedal").html('<img src="./static/img/gold_medal.png" style="height: 2.5rem;">');
				$("#th").html('');
				$("#thimg").html('');
				$("#thmedal").html('');
			}else if(data.length == 2){
				$("#sec").html(data[1].nickname);
				$("#secimg").html('<img src="./image/'+data[1].proImg+'" id="secimg" style="height: 11.25rem; width: 11.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">');
				$("#secmedal").html('<img src="./static/img/gold_medal.png" style="height: 2.5rem;">');
				$("#fe").html(data[0].nickname);
				$("#feimg").html('<img src="./image/'+data[0].proImg+'" id="secimg" style="height: 11.25rem; width: 11.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">');
				$("#femedal").html('<img src="./static/img/gold_medal.png" style="height: 2.5rem;">');
				$("#th").html('');
				$("#thimg").html('');
				$("#thmedal").html('');
			}else if(data.length >= 3){
				$("#sec").html(data[1].nickname);
				$("#secimg").html('<img src="./image/'+data[1].proImg+'" id="secimg" style="height: 11.25rem; width: 11.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">');
				$("#secmedal").html('<img src="./static/img/gold_medal.png" style="height: 2.5rem;">');
				$("#fe").html(data[0].nickname);
				$("#feimg").html('<img src="./image/'+data[0].proImg+'" id="secimg" style="height: 11.25rem; width: 11.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">');
				$("#femedal").html('<img src="./static/img/gold_medal.png" style="height: 2.5rem;">');
				$("#th").html(data[2].nickname);
				$("#thimg").html('<img src="./image/'+data[2].proImg+'" id="secimg" style="height: 11.25rem; width: 11.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">');
				$("#thmedal").html('<img src="./static/img/gold_medal.png" style="height: 2.5rem;">');
			}else{
				$("#sec").html('');
				$("#secimg").html('');
				$("#secmedal").html('');
				$("#fe").html('');
				$("#feimg").html('');
				$("#femedal").html('');
				$("#th").html('');
				$("#thimg").html('');
				$("#thmedal").html('');
			}
			
			/* $("#secimg").html('<img src="./'+data[1].proImg+'" id="secimg" style="height: 11.25rem; width: 11.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">'); */
			
		}, 
		error : function(){
			alert("실패");
		}
	});

}

</script>    
</body>
</html>