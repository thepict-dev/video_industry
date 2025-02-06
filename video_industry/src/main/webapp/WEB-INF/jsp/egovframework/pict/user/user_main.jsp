<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<meta charset="ko">
<%@ include file="./include/head.jsp" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<link rel="stylesheet" href="/css/user_css/main.css">
<body>
    <div class="home-section">
        <div class="introSecContents">
            <div class="logo">
                <img src="/img/user_img/logo-white.png" alt="logo">
            </div>
            <div class="title">
                <h1>춘천시 영상산업지원센터는</h1>
                <h2>‘영화특별시’로 도약하기 위한 중추적인 역할을<br />
                    수행하기 위하여 설립, 출범하게 되었습니다
                </h2>
            </div>
            <div class="scroll">Scroll Down<img src="/img/user_img/down.png" alt=""></div>
        </div>
    </div>
	<%@ include file="./include/header.jsp" %>
    <c:if test="${totalCnt > 0}">
		<div class="mainPopup">
	        <div class="mainPopupInner">
	            <div class="swiper popup">
	                <div class="swiper-wrapper">
	                    <c:forEach var="item" items="${popup_list}" varStatus="status">
		                    <div class="swiper-slide">
		                    	<c:if test="${item.link_url != null and item.link_url != ''}">
			                        <a href="${item.link_url}">
			                            <img src="${item.image_url}" alt="팝업이미지">
			                        </a>
		                    	</c:if>
		                    	<c:if test="${item.link_url == null or item.link_url == ''}">
		                            <img src="${item.image_url}" alt="팝업이미지">
		                    	</c:if>
		                    </div>
	                    </c:forEach>
	                </div>
	            </div>
	            <div class="mainPopupButtons">
	                <button type="button" onclick="todayClosePopup()">
		                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
							<mask id="mask0_1038_16176" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="20" height="20">
								<rect width="20" height="20" fill="#D9D9D9"/>
							</mask>
							<g mask="url(#mask0_1038_16176)">
								<path d="M4.75678 16.5827C4.38164 16.5827 4.06456 16.4532 3.80553 16.1941C3.54651 15.9351 3.41699 15.618 3.41699 15.2429V4.75581C3.41699 4.38067 3.54651 4.06359 3.80553 3.80456C4.06456 3.54553 4.38164 3.41602 4.75678 3.41602H15.2439C15.619 3.41602 15.9361 3.54553 16.1951 3.80456C16.4541 4.06359 16.5837 4.38067 16.5837 4.75581V15.2429C16.5837 15.618 16.4541 15.9351 16.1951 16.1941C15.9361 16.4532 15.619 16.5827 15.2439 16.5827H4.75678ZM4.75678 15.4993H15.2439C15.308 15.4993 15.3668 15.4726 15.4201 15.4191C15.4736 15.3658 15.5003 15.3071 15.5003 15.2429V4.75581C15.5003 4.69164 15.4736 4.63289 15.4201 4.57956C15.3668 4.52608 15.308 4.49935 15.2439 4.49935H4.75678C4.69262 4.49935 4.63387 4.52608 4.58053 4.57956C4.52706 4.63289 4.50033 4.69164 4.50033 4.75581V15.2429C4.50033 15.3071 4.52706 15.3658 4.58053 15.4191C4.63387 15.4726 4.69262 15.4993 4.75678 15.4993Z" fill="#8B96A2"/>
							</g>
						</svg>
	                	오늘 하루 보지 않기
	                </button>
	                <button type="button" onclick="closePopup()">닫기</button>
	            </div>
	            <div class="swiper-pagination popup"></div>
	        </div>
	    </div>
	</c:if>
    <div class="main-section">
    	<div class="swiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
			        <div class="contents-container">
			            <div class="title">
			                <h1>춘천시 영상산업지원센터는</h1>
			                <h2>‘영화특별시’로 도약하기 위한 중추적인 역할을<br />
			                    수행하기 위하여 설립, 출범하게 되었습니다
			                </h2>
			            </div>
		                <a href="#">
		                    <span>보러가기</span>
		                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
		                        <g id="arrow_outward">
		                            <mask id="mask0_9_1606" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0"
		                                width="24" height="24">
		                                <rect id="Bounding-box" width="24" height="24" fill="#D9D9D9" />
		                            </mask>
		                            <g mask="url(#mask0_9_1606)">
		                                <path id="arrow_outward_2"
		                                    d="M6.29425 17.6443L5.25 16.6L15.0905 6.75H6.14425V5.25H17.6443V16.75H16.1443V7.80375L6.29425 17.6443Z"
		                                    fill="white" />
		                            </g>
		                        </g>
		                    </svg>
		                </a>
		                <img src="/img/user_img/main.webp" alt="">
			        </div>
		        </div>
                <div class="swiper-slide">
			        <div class="contents-container">
			            <div class="title">
			                <h1>춘천시 영상산업지원센터는</h1>
			                <h2>‘영화특별시’로 도약하기 위한 중추적인 역할을<br />
			                    수행하기 위하여 설립, 출범하게 되었습니다
			                </h2>
			            </div>
		                <a href="#">
		                    <span>보러가기</span>
		                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
		                        <g id="arrow_outward">
		                            <mask id="mask0_9_1606" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0"
		                                width="24" height="24">
		                                <rect id="Bounding-box" width="24" height="24" fill="#D9D9D9" />
		                            </mask>
		                            <g mask="url(#mask0_9_1606)">
		                                <path id="arrow_outward_2"
		                                    d="M6.29425 17.6443L5.25 16.6L15.0905 6.75H6.14425V5.25H17.6443V16.75H16.1443V7.80375L6.29425 17.6443Z"
		                                    fill="white" />
		                            </g>
		                        </g>
		                    </svg>
		                </a>
	                	<img src="/img/user_img/main.webp" alt="">
			        </div>
		        </div>
        	</div>
            <div class="buttonsWrapper">
                <div class="swiperButtons">
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-pause"></div>
                    <div class="swiper-button-prev"></div>
                </div>
                <div class="autoplay-progress">
                    <svg viewBox="0 0 48 48">
                        <circle cx="24" cy="24" r="20"></circle>
                        <circle cx="24" cy="24" r="20"></circle>
                    </svg>
                    <span></span>
                </div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </div>
    <div class="sec-01">
        <h3 class="section-title">춘천시 촬영작품</h3>
        <div class="poster-container">
            <c:forEach var="movie_list" items="${movie_list}" varStatus="status">
	            <div class="poster <c:if test='${status.index eq 0}'>active</c:if>">
	                <div class="img-container">
	                    <img src="${movie_list.img_thumb}" alt="" srcset="">
	                </div>
	                <div class="movie-info">
	                    <div class="info-box">
	                        <span class="date">${movie_list.open_date} 개봉</span>
	                        <h6>${movie_list.title}</h6>
	                        <p class="text">${movie_list.text}</p>
	                        <a href="/location_view.do?idx=${movie_list.location_id}">
	                            <span>보러가기</span>
	                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
	                                xmlns="http://www.w3.org/2000/svg">
	                                <g id="arrow_outward">
	                                    <mask id="mask0_9_1606" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0"
	                                        y="0" width="24" height="24">
	                                        <rect id="Bounding-box" width="24" height="24" fill="#D9D9D9" />
	                                    </mask>
	                                    <g mask="url(#mask0_9_1606)">
	                                        <path id="arrow_outward_2"
	                                            d="M6.29425 17.6443L5.25 16.6L15.0905 6.75H6.14425V5.25H17.6443V16.75H16.1443V7.80375L6.29425 17.6443Z"
	                                            fill="black" />
	                                    </g>
	                                </g>
	                            </svg>
	                        </a>
	                    </div>
	                </div>
	            </div>
            </c:forEach>
            
        </div>

        <div class="grid-container">
        	<c:choose>
            	<c:when test="${empty resultList}"></c:when>
            	<c:otherwise>
		            <div class="grid-item">
		                <h3 class="section-title">Notice</h3>
		                <ul class="list-container">
		                	<c:forEach var="board_list" items="${board_list}" varStatus="status">
			                    <li>
			                        <span class="content">
			                            <span class="index">${status.count}</span>
			                            <p>${board_list.title}</p>
			                        </span>
			                        <span class="row">
			                            <span class="date">${fn:substring(board_list.reg_date,0,11) }</span>
			                            <a href="/notice_view.do?idx=${board_list.idx}" target="_blank" rel="noopener noreferrer">
			                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
			                                    fill="none">
			                                    <mask id="mask0_95_1360" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0"
			                                        y="0" width="24" height="24">
			                                        <rect width="24" height="24" fill="#D9D9D9" />
			                                    </mask>
			                                    <g mask="url(#mask0_95_1360)">
			                                        <path
			                                            d="M6.29425 17.6443L5.25 16.6L15.0905 6.75H6.14425V5.25H17.6443V16.75H16.1443V7.80375L6.29425 17.6443Z"
			                                            fill="black" />
			                                    </g>
			                                </svg>
			                            </a>
			                        </span>
			                    </li>
		                    </c:forEach>
		                </ul>
		            </div>
	            </c:otherwise>
            </c:choose>
        	<c:choose>
            	<c:when test="${empty resultList}"></c:when>
            	<c:otherwise>
	            <div class="grid-item">
	                <h3 class="section-title">News</h3>
	                <ul class="list-container">
	                    <c:forEach var="news_list" items="${news_list}" varStatus="status">
		                    <li>
		                        <span class="content">
		                            <span class="index">${status.count}</span>
		                            <p>${news_list.title}</p>
		                        </span>
		                        <span class="row">
		                            <span class="date">${fn:substring(news_list.reg_date,0,11) }</span>
		                            <a href="/notice_view.do?idx=${news_list.idx}" target="_blank" rel="noopener noreferrer">
		                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
		                                    fill="none">
		                                    <mask id="mask0_95_1360" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0"
		                                        y="0" width="24" height="24">
		                                        <rect width="24" height="24" fill="#D9D9D9" />
		                                    </mask>
		                                    <g mask="url(#mask0_95_1360)">
		                                        <path
		                                            d="M6.29425 17.6443L5.25 16.6L15.0905 6.75H6.14425V5.25H17.6443V16.75H16.1443V7.80375L6.29425 17.6443Z"
		                                            fill="black" />
		                                    </g>
		                                </svg>
		                            </a>
		                        </span>
		                    </li>
	                    </c:forEach>
	                </ul>
	            </div>
	            </c:otherwise>
            </c:choose>
        </div>

        <div class="location-section">
            <h3 class="section-title">Location DB</h3>
            <div class="location-container">
            <!-- 링크가 location_view.do?idx=164 -->
                <c:forEach var="location_layer_list" items="${location_layer_list}" varStatus="status">
	                <a href="/location_view.do?idx=${location_layer_list.idx}" class="location-item">
	                    <div class="img-container">
	                        <img src="${location_layer_list.img_thumb}" alt="" srcset="">
	                    </div>
	                    <span class="type">
	                    	<c:if test="${location_layer_list.location_category eq '1'}">공공/기관</c:if>
	                    	<c:if test="${location_layer_list.location_category eq '2'}">관광/공원/카페</c:if>
	                    	<c:if test="${location_layer_list.location_category eq '3'}">도로/교통</c:if>
	                    	<c:if test="${location_layer_list.location_category eq '4'}">숙박시설</c:if>
	                    	<c:if test="${location_layer_list.location_category eq '5'}">야외스튜디오</c:if>
	                    	<c:if test="${location_layer_list.location_category eq '6'}">유휴시설</c:if>
	                    	<c:if test="${location_layer_list.location_category eq '7'}">종교/전통</c:if>
	                    	<c:if test="${location_layer_list.location_category eq '8'}">기타</c:if>
                    	</span>
	                    <h6>${location_layer_list.title}</h6>
	                    <p class="hashtag">${location_layer_list.keyword}</p>
	                    <p class="address">${location_layer_list.address }</p>
	                    <p class="tel">${location_layer_list.tel }</p>
	                </a>
                </c:forEach>
                
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
	<script src="/js/user_js/header.js"></script>
	<script src="/js/user_js/main.js"></script>
</body>
</html>