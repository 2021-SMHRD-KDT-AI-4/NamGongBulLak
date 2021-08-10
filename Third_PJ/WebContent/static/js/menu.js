// 객체 생성(메뉴)
var entire = document.getElementById("entire");
var menuList = document.getElementById("menuList");
var tutorial = document.getElementById("tutorial");
var playDance = document.getElementById("playDance");
var ranking = document.getElementById("ranking");
var tutorialList = document.getElementById("tutorialList");
var playDanceList = document.getElementById("playDanceList");
var rankingList = document.getElementById("rankingList");
var menuicon = document.getElementById("menuicon");


// TUTORIAL 클릭
tutorial.onclick = function() {
    tutorialList.style.display = 'block';
    playDanceList.style.display = 'none';
    rankingList.style.display = 'none';
    entire.style.marginLeft = '35rem';
    entire.style.transition = 'margin-left .35s';
    menuList.style.color = '#707070';
    tutorial.style.backgroundColor = 'rgba(0, 0, 0, 0.5)';
    tutorial.style.color = 'white';
    ranking.style.backgroundColor = '';
    ranking.style.color = '';
    playDance.style.backgroundColor = '';
    playDance.style.color = '';
};

// PLAYDANCE 클릭
playDance.onclick = function() {
    tutorialList.style.display = 'none';
    playDanceList.style.display = 'block';
    playDanceList.style.visibility = 'visible';
    rankingList.style.display = 'none';
    entire.style.marginLeft = '35rem';
    entire.style.transition = 'margin-left .35s';
    menuList.style.color = '#707070';
    tutorial.style.backgroundColor = '';
    tutorial.style.color = '';
    ranking.style.backgroundColor = '';
    ranking.style.color = '';
    playDance.style.backgroundColor = 'rgba(0, 0, 0, 0.5)';
    playDance.style.color = 'white';
};

// RANKING 클릭
ranking.onclick = function() {
    tutorialList.style.display = 'none';
    playDanceList.style.display = 'none';
    rankingList.style.display = 'block';
    entire.style.marginLeft = '35rem';
    entire.style.transition = 'margin-left .35s';
    menuList.style.color = '#707070';
    tutorial.style.backgroundColor = '';
    tutorial.style.color = '';
    ranking.style.backgroundColor = 'rgba(0, 0, 0, 0.5)';
    ranking.style.color = 'white';
    playDance.style.backgroundColor = '';
    playDance.style.color = '';
};

// 객체 생성2 (btnSortPlayDance)
var sortSong = document.getElementById("sortSong");
var sortSinger = document.getElementById("sortSinger");
var sortDifficulty = document.getElementById("sortDifficulty");
var sortReleaseDate = document.getElementById("sortReleaseDate");

// sortSong
sortSong.onclick = function() {
    sortSong.style.color = '#ffffff';
    sortSong.style.borderColor = '#ffffff';
    sortSinger.style.color = '#707070';
    sortSinger.style.borderColor = '#707070';
    sortDifficulty.style.color = '#707070';
    sortDifficulty.style.borderColor = '#707070';
    sortReleaseDate.style.color = '#707070';
    sortReleaseDate.style.borderColor = '#707070';
}

// sortSinger
sortSinger.onclick = function() {
    sortSong.style.color = '#707070';
    sortSong.style.borderColor = '#707070';
    sortSinger.style.color = '#ffffff';
    sortSinger.style.borderColor = '#ffffff';
    sortDifficulty.style.color = '#707070';
    sortDifficulty.style.borderColor = '#707070';
    sortReleaseDate.style.color = '#707070';
    sortReleaseDate.style.borderColor = '#707070';
}

// sortDifficulty
sortDifficulty.onclick = function() {
    sortSong.style.color = '#707070';
    sortSong.style.borderColor = '#707070';
    sortSinger.style.color = '#707070';
    sortSinger.style.borderColor = '#707070';
    sortDifficulty.style.color = '#ffffff';
    sortDifficulty.style.borderColor = '#ffffff';
    sortReleaseDate.style.color = '#707070';
    sortReleaseDate.style.borderColor = '#707070';
}

// sortReleaseDate
sortReleaseDate.onclick = function() {
    sortSong.style.color = '#707070';
    sortSong.style.borderColor = '#707070';
    sortSinger.style.color = '#707070';
    sortSinger.style.borderColor = '#707070';
    sortDifficulty.style.color = '#707070';
    sortDifficulty.style.borderColor = '#707070';
    sortReleaseDate.style.color = '#ffffff';
    sortReleaseDate.style.borderColor = '#ffffff';
}

// 가라가라... 메뉴 닫을 시 메뉴 페이지 초기화
menuicon.onclick = function() {
    var checked = menuicon.checked;
    if (!checked) {
        playDanceList.style.visibility = 'hidden';
    } else {
        $(document).ready(function() {
			$("#menu").load("./menu.html");
		});
    }
};

// 이것도 가라...^ 왠지 모르겠는데 여기도 코드 있어야댐ㅋ
var swiper = new Swiper(".mySwiper", {
    effect: "coverflow",
    direction: "vertical",
    loop: true,
    mousewheel: true,
    coverflowEffect: {
        rotate: 0,
        stretch: 200,
        depth: 200,
        modifier: 1,
        slideShadows: true,
    },
});

