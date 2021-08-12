<%@page import="com_model.RankingCountryDTO"%>
<%@page import="com_model.RankingCountryDAO"%>
<%@page import="java.util.ArrayList"%>

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
    <title>CountryRanking</title>
</head>
<body>
<% MemberDTO info = (MemberDTO)session.getAttribute("info"); 
	RankingCountryDAO rankingCountrydao = new RankingCountryDAO();
	String rcountry = request.getParameter("rcountry");
	RankingCountryDTO rankingCountrydto = rankingCountrydao.showCRanking("rcountry");
	ArrayList<RankingCountryDTO> RClist = rankingCountrydao.countRankingCountry("rcountry");
	ArrayList<RankingCountryDTO> CVlist = rankingCountrydao.showSum(); 
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
                <input type="button" value="Song" style="margin-bottom: 2rem; width: 6.25rem;">
                <input type="button" value="Country" style="margin-bottom: 2rem; width: 8rem;">
            </div>
            <div style="width: 38.25rem;">
                <div style="height: 17.5rem;">
                    <div style="height: 100%; display: flex; flex-direction: row;">
                       	
                        <div style="width: 11.25rem;">
                            <div id="secimg" style="height: 12.5rem; display: flex; align-items: center; justify-content: center;">
                                <!-- 2위 국가 사진 -->
                                <%if(CVlist.get(1).getRcountry().equals("korea")){ %>
                                <img src="./country/D.jpg" style="width: 11.25rem; border: 0.0625rem solid #fff;">
                            	<% } else if(CVlist.get(1).getRcountry().equals("china")) {%>
                                <img src="./country/C.png" style="width: 11.25rem; border: 0.0625rem solid #fff;">
                            	<% } else if(CVlist.get(1).getRcountry().equals("japan")) {%>
                                <img src="./country/J.png" style="width: 11.25rem; border: 0.0625rem solid #fff;">
                            	<% } else if(CVlist.get(1).getRcountry().equals("usa")) {%>
                                <img src="./country/U.png" style="width: 11.25rem; border: 0.0625rem solid #fff;">
                            	<% } %>
                            </div>
                            <div style="height: 5rem; display: flex; align-items: center; justify-content: center;">
                                <img src="./emblem/silver_medal.jpg" style="height: 2.5rem;">
                                <!-- 2위 국가 이름 -->
                                <div style="font-size: 1.3rem;" id="sec"><%= CVlist.get(1).getRcountry() %></div>
                            </div>
                        </div>
                        <div style="width: 17rem;">
                            <div style="height: 12.5rem; display: flex; align-items: center; justify-content: center;">
                                <!-- 1위 국가 사진 -->
                                <%if(CVlist.get(0).getRcountry().equals("korea")){ %>
                                <img src="./country/D.jpg" style="width: 11.25rem; border: 0.0625rem solid #fff;">
                            	<% } else if(CVlist.get(0).getRcountry().equals("china")) {%>
                                <img src="./country/C.png" style="width: 11.25rem; border: 0.0625rem solid #fff;">
                            	<% } else if(CVlist.get(0).getRcountry().equals("japan")) {%>
                                <img src="./country/J.png" style="width: 11.25rem; border: 0.0625rem solid #fff;">
                            	<% } else if(CVlist.get(0).getRcountry().equals("usa")) {%>
                                <img src="./country/U.png" style="width: 11.25rem; border: 0.0625rem solid #fff;">
                            	<% } %>
                            </div>
                            <div style="height: 5rem; display: flex; align-items: center; justify-content: center;">
                                <img src="./emblem/gold_medal.jpg" style="height: 2.5rem;">
                                <!-- 1위 국가 이름 -->
                                <div style="font-size: 1.3rem;" id="fe"><%= CVlist.get(0).getRcountry() %></div>
                            </div>
                        </div>
                        <div style="width: 10rem;">
                            <div style="height: 12.5rem; display: flex; align-items: center; justify-content: center;">
                                <!-- 3위 국가 사진 -->
                                <%if(CVlist.get(2).getRcountry().equals("korea")){ %>
                                <img src="./country/D.jpg" style="width: 11.25rem; border: 0.0625rem solid #fff;">
                            	<% } else if(CVlist.get(2).getRcountry().equals("china")) {%>
                                <img src="./country/C.png" style="width: 11.25rem; border: 0.0625rem solid #fff;">
                            	<% } else if(CVlist.get(2).getRcountry().equals("japan")) {%>
                                <img src="./country/J.png" style="width: 11.25rem; border: 0.0625rem solid #fff;">
                            	<% } else if(CVlist.get(2).getRcountry().equals("usa")) {%>
                                <img src="./country/U.png" style="width: 11.25rem; border: 0.0625rem solid #fff;">
                            	<% } %>
                            </div>
                            <div style="height: 5rem; display: flex; align-items: center; justify-content: center;">
                                <img src="./emblem/bronze_medal.jpg" style="height: 2.5rem;">
                                <!-- 3위 국가 이름 -->
                                <div style="font-size: 1.3rem;" id="th"><%= CVlist.get(2).getRcountry() %></div>
                            </div>
                        </div>
                       
                    </div>
                </div>
                <div style="height: 33.5rem;margin: 0 2.5rem;">
                    <!-- 테이블 -->
                    <div style="height: 33.5rem; background-color: rgba(207, 207, 207, 0.5); color: black; overflow:overlay;">
                        <!-- 테이블 제목 -->
                        <div style="font-size: 2rem; font-family: 'GmarketSansTTFBold'; display: grid; grid-template-columns: 5rem 11rem 17rem;">
                            <div>순위</div>
                            <div>국가</div>
                            <div>점수</div>
                        </div>
                        <!-- 테이블 내용 -->
                		<% for(int i=0; i<CVlist.size(); i++) { %>
                        <div style="font-size: 2rem; display: grid; grid-template-columns: 5rem 11rem 17rem;">
                            <!-- 반복 1 -->
                            <!-- 순위 -->
                            <div><%= CVlist.get(i).getRank() %></div>
                            <!-- 국가 사진/국가명 -->
                            <div><input style="font-family: 'GmarketSansTTFBold'; font-size: 2rem; background-color:transparent; outline:none; border:none;" type="button" id="country<%= i %>" name="country" value="<%= CVlist.get(i).getRcountry() %>" onclick="countryclick(<%=i%>)"></div>
                            <!-- 점수 -->
                            <div><%= CVlist.get(i).getCRSum() %></div>
                        </div>
                       	<% } %>
                       	
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
                    <div id="countryRankingTable" style="font-size: 2rem; display: grid; grid-template-columns: 5rem 9.75rem 21.25rem 5rem 4.9rem 4.9rem 4.9rem;">
                        <div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
function countryclick(num){
	$.ajax({
		type : "post",
		data : {
			"country" : $('#country'+num).val()
		},
		url : "CountrayRankService",
		dataType: "JSON",
		success : function(data){
			console.log(data);
			$("#countryRankingTable").html(data);
			for(var i = 0; i < data.length; i++){
// 				console.log('hi2 : ' + data[i].emblem.indexOf(","));
				$("#countryRankingTable").append('<div>'+data[i].rank+'</div>'); 
				$("#countryRankingTable").append('<div><img src=">'+data[i].proImg+'" style="height: 6.25rem; width: 6.25rem; border: 0.0625rem solid #fff; border-radius: 50%;"></div>'); 
				$("#countryRankingTable").append('<div>'+data[i].nickname+'</div>'); 
				$("#countryRankingTable").append('<div>'+data[i].accuracy+'</div>');
				if(data[i].emblem == undefined) {
					$("#countryRankingTable").append('<div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;"></div>');
					$("#countryRankingTable").append('<div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;"></div>');
					$("#countryRankingTable").append('<div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;"></div>');
				}else if (data[i].emblem.indexOf(',') == -1){
					$("#countryRankingTable").append('<div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;"><img src="'+data[i].emblem+'" style="height: 3.75rem; width: 3.75rem;"></div>');
					$("#countryRankingTable").append('<div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;"></div>');
					$("#countryRankingTable").append('<div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;"></div>');
				} else {
					const emblems = data[i].emblem.split(",");
					for(var j = 0; j < emblems.length; j++) {
						$("#countryRankingTable").append('<div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;"><img src="'+emblems[j]+'" style="height: 3.75rem; width: 3.75rem;"></div>');
					}
				}
				/* $("#countryRankingTable").append('</div>'); */
				
				
			}
			/* if(data.length == 1){
				$("#sec").html('');
				$("#fe").html(data[0].nickname);
				$("#th").html('');
			}else if(data.length == 2){
				$("#sec").html(data[1].nickname);
				$("#fe").html(data[0].nickname);
				$("#th").html('');
			}else if(data.length >= 3){
				$("#sec").html(data[1].nickname);
				$("#fe").html(data[0].nickname);
				$("#th").html(data[2].nickname);
			}else{
				$("#sec").html('');
				$("#fe").html('');
				$("#th").html('');
			} */
			/* console.log(data);
			$("#secimg").html(data);
			$("#secimg").append('<img src="./image/'+data[1].proImg+'" style="width: 11.25rem; border: 0.0625rem solid #fff;">'); */
		},
		error : function(){
			alert("실패");
		}
	});
}
</script>
</body>
</html>