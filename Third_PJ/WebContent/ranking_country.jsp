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
<% MemberDTO info = (MemberDTO)session.getAttribute("info"); %>

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
                            <div style="height: 12.5rem; display: flex; align-items: center; justify-content: center;">
                                <!-- 2위 국가 사진 -->
                                <img src="./static/img/태극기.jpg" style="width: 11.25rem; border: 0.0625rem solid #fff;">
                            </div>
                            <div style="height: 5rem; display: flex; align-items: center; justify-content: center;">
                                <img src="./static/img/gold_medal.png" style="height: 2.5rem;">
                                <!-- 2위 국가 이름 -->
                                독도는
                            </div>
                        </div>
                        <div style="width: 17rem;">
                            <div style="height: 12.5rem; display: flex; align-items: center; justify-content: center;">
                                <!-- 1위 국가 사진 -->
                                <img src="./static/img/태극기.jpg" style="width: 12.5rem; border: 0.0625rem solid #fff;">
                            </div>
                            <div style="height: 5rem; display: flex; align-items: center; justify-content: center;">
                                <img src="./static/img/gold_medal.png" style="height: 2.5rem;">
                                <!-- 1위 국가 이름 -->
                                대한민국
                            </div>
                        </div>
                        <div style="width: 10rem;">
                            <div style="height: 12.5rem; display: flex; align-items: center; justify-content: center;">
                                <!-- 3위 국가 사진 -->
                                <img src="./static/img/태극기.jpg" style="width: 10rem; border: 0.0625rem solid #fff;">
                            </div>
                            <div style="height: 5rem; display: flex; align-items: center; justify-content: center;">
                                <img src="./static/img/gold_medal.png" style="height: 2.5rem;">
                                <!-- 3위 국가 이름 -->
                                우리땅
                            </div>
                        </div>
                    </div>
                </div>
                <div style="height: 33.5rem;margin: 0 2.5rem;">
                    <!-- 테이블 -->
                    <div style="height: 33.5rem; background-color: rgba(207, 207, 207, 0.5); color: black; overflow:overlay;">
                        <!-- 테이블 제목 -->
                        <div style="font-size: 2rem; font-family: 'GmarketSansTTFBold'; display: grid; grid-template-columns: 5rem 8.75rem 18.25rem;">
                            <div>순위</div>
                            <div>국가</div>
                            <div>점수</div>
                        </div>
                        <!-- 테이블 내용 -->
                        <div style="font-size: 2rem; display: grid; grid-template-columns: 5rem 8.75rem 18.25rem;">
                            <!-- 반복 1 -->
                            <!-- 순위 -->
                            <div>1</div>
                            <!-- 국가 사진/국가명 -->
                            <div>
                                <img src="./static/img/태극기.jpg" style="width: 5rem; border: 0.0625rem solid #fff;">
                                <br>대한민국
                            </div>
                            <!-- 점수 -->
                            <div>
                                123,456,789
                            </div>
                            <!-- 반복 2 -->
                            <!-- 순위 -->
                            <div>1</div>
                            <!-- 국가 사진/국가명 -->
                            <div>
                                <img src="./static/img/태극기.jpg" style="width: 5rem; border: 0.0625rem solid #fff;">
                                <br>대한민국
                            </div>
                            <!-- 점수 -->
                            <div>
                                123,456,789
                            </div>
                            <!-- 반복 2 -->
                            <!-- 순위 -->
                            <div>1</div>
                            <!-- 국가 사진/국가명 -->
                            <div>
                                <img src="./static/img/태극기.jpg" style="width: 5rem; border: 0.0625rem solid #fff;">
                                <br>대한민국
                            </div>
                            <!-- 점수 -->
                            <div>
                                123,456,789
                            </div>
                            <!-- 반복 2 -->
                            <!-- 순위 -->
                            <div>1</div>
                            <!-- 국가 사진/국가명 -->
                            <div>
                                <img src="./static/img/태극기.jpg" style="width: 5rem; border: 0.0625rem solid #fff;">
                                <br>대한민국
                            </div>
                            <!-- 점수 -->
                            <div>
                                123,456,789
                            </div>
                            <!-- 반복 2 -->
                            <!-- 순위 -->
                            <div>1</div>
                            <!-- 국가 사진/국가명 -->
                            <div>
                                <img src="./static/img/태극기.jpg" style="width: 5rem; border: 0.0625rem solid #fff;">
                                <br>대한민국
                            </div>
                            <!-- 점수 -->
                            <div>
                                123,456,789
                            </div>
                            
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
                    <div style="font-size: 2rem; display: grid; grid-template-columns: 5rem 9.75rem 21.25rem 5rem 14.75rem;">
                        <!-- 반복 1 -->
                        <!-- 순위 -->
                        <div>1</div>
                        <!-- 프로필 사진 -->
                        <div>
                            <img src="./data/profile_image/iu3.jpg" style="height: 6.25rem; width: 6.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">
                        </div>
                        <!-- 닉네임 -->
                        <div>
                            청춘은
                        </div>
                        <!-- 점수 -->
                        <div>87.17</div>
                        <!-- 엠블럼 -->
                        <div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                        </div>
                        <!-- 반복 2 -->
                        <div>1</div>
                        <div>
                            <img src="./data/profile_image/iu3.jpg" style="height: 6.25rem; width: 6.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">
                        </div>
                        <div>
                            청춘은
                        </div>
                        <div>87.17</div>
                        <div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                        </div>
                        <!-- 반복 2 -->
                        <div>1</div>
                        <div>
                            <img src="./data/profile_image/iu3.jpg" style="height: 6.25rem; width: 6.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">
                        </div>
                        <div>
                            청춘은
                        </div>
                        <div>87.17</div>
                        <div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                        </div>
                        <!-- 반복 2 -->
                        <div>1</div>
                        <div>
                            <img src="./data/profile_image/iu3.jpg" style="height: 6.25rem; width: 6.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">
                        </div>
                        <div>
                            청춘은
                        </div>
                        <div>87.17</div>
                        <div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                        </div>
                        <!-- 반복 2 -->
                        <div>1</div>
                        <div>
                            <img src="./data/profile_image/iu3.jpg" style="height: 6.25rem; width: 6.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">
                        </div>
                        <div>
                            청춘은
                        </div>
                        <div>87.17</div>
                        <div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                        </div>
                        <!-- 반복 2 -->
                        <div>1</div>
                        <div>
                            <img src="./data/profile_image/iu3.jpg" style="height: 6.25rem; width: 6.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">
                        </div>
                        <div>
                            청춘은
                        </div>
                        <div>87.17</div>
                        <div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                        </div>
                        <!-- 반복 2 -->
                        <div>1</div>
                        <div>
                            <img src="./data/profile_image/iu3.jpg" style="height: 6.25rem; width: 6.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">
                        </div>
                        <div>
                            청춘은
                        </div>
                        <div>87.17</div>
                        <div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                        </div>
                        <!-- 반복 2 -->
                        <div>1</div>
                        <div>
                            <img src="./data/profile_image/iu3.jpg" style="height: 6.25rem; width: 6.25rem; border: 0.0625rem solid #fff; border-radius: 50%;">
                        </div>
                        <div>
                            청춘은
                        </div>
                        <div>87.17</div>
                        <div style="display: flex; flex-direction: row; justify-content: space-between; padding: 0 1rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                            <img src="./static/img/gold_medal.png" style="height: 3.75rem; width: 3.75rem;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>