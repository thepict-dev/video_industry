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
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=925202b192d06497745071237b981068"></script>
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
            <a href="location_db_list.do">리스트형</a>
            <a href="location_db_map.do" class="active">지도형</a>
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
        <div class="map-container">
            <div class="map"></div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
	<script src="/js/user_js/location-db.js"></script>
	<script src="/js/user_js/header.js"></script>
</body>
</html>