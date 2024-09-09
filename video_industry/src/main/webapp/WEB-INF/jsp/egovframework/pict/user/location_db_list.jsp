<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html>
<meta charset="ko">
<%@ include file="./include/head.jsp" %>
<link rel="stylesheet" href="/css/user_css/location-db.css">
<body>
	<%@ include file="./include/header.jsp" %>
    <div class="visual-section">
        <div class="opacity-back"></div>
        <div class="content">
            <h2>로케이션DB</h2>
            <h1>누구나 쉽게 장소를 섭외할 수 있도록<br />제작자의 입장에서 엄선한 로케이션입니다</h1>
        </div>
    </div>
    <div class="main-section">
        <div class="toggle-container">
            <a href="location_db_list.do" class="active">리스트형</a>
            <a href="location_db_map.do">지도형</a>
        </div>
        <div class="input-container">
            <div class="icon"></div>
            <input type="text" class="search" placeholder="어떤 장소를 찾으세요?">
        </div>
        <ul class="navigator">
            <li class="active">
                <a href="#lnk">전체보기</a>
            </li>
            <li>
                <a href="#lnk">공공/기관</a>
            </li>
            <li>
                <a href="#lnk">관광/공원/카페</a>
            </li>
            <li>
                <a href="#lnk">도로/교통</a>
            </li>
            <li>
                <a href="#lnk">종교/전통</a>
            </li>
            <li>
                <a href="#lnk">숙박시설</a>
            </li>
            <li>
                <a href="#lnk">유휴시설</a>
            </li>
            <li>
                <a href="#lnk">야외스튜디오</a>
            </li>
            <li>
                <a href="#lnk">기타</a>
            </li>
        </ul>
        <div class="list-container active">
            <div class="location-container">
                <div class="location-item">
                    <div class="img-container">
                        <img src="./img/user_img/main.webp" alt="" srcset="">
                    </div>
                    <span class="type">관광/공원 카페</span>
                    <h6>김유정문학촌</h6>
                    <p class="hashtag">#관광, #케이블카, #풍경, #멋짐</p>
                    <p class="address">강원특별자치도 춘천시 신동면 김유정로 1430-14</p>
                    <p class="tel">033-261-4650</p>
                </div>
                <div class="location-item">
                    <div class="img-container">
                        <img src="./img/user_img/main.webp" alt="" srcset="">
                    </div>
                    <span class="type">관광/공원 카페</span>
                    <h6>김유정문학촌</h6>
                    <p class="hashtag">#관광, #케이블카, #풍경, #멋짐</p>
                    <p class="address">강원특별자치도 춘천시 신동면 김유정로 1430-14</p>
                    <p class="tel">033-261-4650</p>
                </div>
                <div class="location-item">
                    <div class="img-container">
                        <img src="./img/user_img/main.webp" alt="" srcset="">
                    </div>
                    <span class="type">관광/공원 카페</span>
                    <h6>김유정문학촌</h6>
                    <p class="hashtag">#관광, #케이블카, #풍경, #멋짐</p>
                    <p class="address">강원특별자치도 춘천시 신동면 김유정로 1430-14</p>
                    <p class="tel">033-261-4650</p>
                </div>
                <div class="location-item">
                    <div class="img-container">
                        <img src="./img/user_img/main.webp" alt="" srcset="">
                    </div>
                    <span class="type">관광/공원 카페</span>
                    <h6>김유정문학촌</h6>
                    <p class="hashtag">#관광, #케이블카, #풍경, #멋짐</p>
                    <p class="address">강원특별자치도 춘천시 신동면 김유정로 1430-14</p>
                    <p class="tel">033-261-4650</p>
                </div>
            </div>
        	<div class="list-container"></div>
        	<div class="list-container"></div>
        	<div class="list-container"></div>
        	<div class="list-container"></div>
        	<div class="list-container"></div>
        	<div class="list-container"></div>
        	<div class="list-container"></div>
        	<div class="list-container"></div>
            <div class="pagination">
                <a href="#lnk" class="first-page page-button">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                        <path d="M11.7266 12L12.6666 11.06L9.61329 8L12.6666 4.94L11.7266 4L7.72663 8L11.7266 12Z"
                            fill="#242A30" />
                        <path d="M7.33332 12L8.27332 11.06L5.21998 8L8.27331 4.94L7.33331 4L3.33332 8L7.33332 12Z"
                            fill="#242A30" />
                    </svg>
                </a>
                <a href="#lnk" class="prev-page page-button">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                        <path d="M10.06 12L11 11.06L7.94667 8L11 4.94L10.06 4L6.06 8L10.06 12Z" fill="#242A30" />
                    </svg>
                </a>
                <a href="#lnk" class="page-button active">1</a>
                <a href="#lnk" class="page-button">2</a>
                <a href="#lnk" class="page-button">3</a>
                <a href="#lnk" class="page-button else-page">...</a>
                <a href="#lnk" class="page-button">10</a>
                <a href="#lnk" class="next-page page-button">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                        <path d="M6.94 4L6 4.94L9.05333 8L6 11.06L6.94 12L10.94 8L6.94 4Z" fill="#242A30" />
                    </svg>
                </a>
                <a href="#lnk" class="last-page page-button">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                        <path d="M4.27325 4L3.33325 4.94L6.38659 8L3.33325 11.06L4.27325 12L8.27325 8L4.27325 4Z"
                            fill="#242A30" />
                        <path d="M8.66656 4L7.72656 4.94L10.7799 8L7.72656 11.06L8.66656 12L12.6666 8L8.66656 4Z"
                            fill="#242A30" />
                    </svg>
                </a>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
	<script src="/js/user_js/header.js"></script>
	<script>

		//탭
		const tabItem = document.querySelectorAll('.navigator li');
		const tabInner = document.querySelectorAll('.list-container');
	
		function activateTab(items, index) {
		    tabInner.forEach((inner) => {
		        inner.classList.remove('active');
		    });
	
		    items.forEach((item) => {
		        item.classList.remove('active');
		    });
	
		    items[index].classList.add('active');
		    tabInner[index].classList.add('active');
		}
	
		tabItem.forEach((tab, idx) => {
		    tab.addEventListener('click', function() {
		        activateTab(tabItem, idx);
		    });
		});
	</script>
</body>
</html>