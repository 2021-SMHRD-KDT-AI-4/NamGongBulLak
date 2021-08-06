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
    <title>Join</title>
</head>
<body>
    <div style="background-color: rgba(0,0,0,0.5); width: 100%; height: 100vh;">
        <!-- 상단 네비게이션 -->
        <div id="navi"></div>
        <!-- 메인 내용 -->
        <div style="height: 2rem;"></div>
        <!-- 조인 폼 -->
        <form action="JoinService">
            <div style="height: 22.5rem; width: 22.5rem; margin: auto;">
                <!-- 프로필 이미지 -->
                <input id="uploadImg" type="file" style="display: none;">
                <label for="uploadImg">
                    <img src="./static/img/upload_image.png" id="previewImg" style="width: 100%; height: 100%; border: 0.25rem solid #ffffff; border-radius: 50%;">
                </label>
            </div>
            <div style="height: 2rem;"></div>
            <div style="height: 16.5rem; display: flex; justify-content: space-between; flex-direction: column; align-items: center; font-family: 'GmarketSansTTFBold';">
                <div style="width: 28rem; display: flex; justify-content:space-between; align-items: center;">
                    <!-- 아이디 -->
                    <div style="margin: auto;">ID</div>
                    <input name="id" type="text" style="width: 15rem; height: 2.5rem; border: 0.0625rem solid #000; border-radius: 0.5rem;">
                </div>
                <div style="width: 28rem; display: flex; justify-content: space-between; align-items: center;">
                    <!-- 비밀번호 -->
                    <div style="margin: auto;">PW</div>
                    <input name="pw" type="password" style="width: 15rem; height: 2.5rem; border: 0.0625rem solid #000; border-radius: 0.5rem;">
                </div>
                <div style="width: 28rem; display: flex; justify-content: space-between; align-items: center;">
                    <!-- 닉네임 -->
                    <div style="margin: auto;">NICKNAME</div>
                    <input name="nickname" type="text" style="width: 15rem; height: 2.5rem; border: 0.0625rem solid #000; border-radius: 0.5rem;">
                </div>
                <div style="width: 28rem; display: flex; justify-content: space-between; align-items: center;">
                    <!-- 국가 -->
                    <div style="margin: auto;">COUNTRY</div>
                    <select name="country" style="width: 15rem; height: 2.5rem; border: 0.0625rem solid #000; border-radius: 0.5rem;">
                        <option value="korea">대한민국</option>
                        <option value="china">중국</option>
                        <option value="japan">일본</option>
                        <option value="usa">미국</option>
                    </select>
                </div>
                <div style="width: 28rem; display: flex; justify-content: space-between; align-items: center;">
                    <!-- 랭커 영상 공유 동의 -->
                    <div style="margin: auto;">SHARING</div>
                    <div style="margin: auto;">
                        <input name="share_agree" type="radio" id="agree" checked><label for="agree">동의</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="share_agree" type="radio" id="disagree"><label for="disagree">거부</label>
                    </div>
                </div>
                <input name="mileage" type="hidden" style="width: 15rem; height: 2.5rem; border: 0.0625rem solid #000; border-radius: 0.5rem;">
                <input name="premium" type="hidden" style="width: 15rem; height: 2.5rem; border: 0.0625rem solid #000; border-radius: 0.5rem;">
            </div>
            <div style="height: 2rem;"></div>
            <input type="submit" value="회원가입" style="width: 6rem; height: 2.5rem; background-color: #000; color: #ffffff; border: 0.03125rem solid #ffffff; border-radius: 0.5rem;">
        </form>
    </div>
</body>
<script type="text/javascript" src="./static/js/preview_image.js"></script>
</html>