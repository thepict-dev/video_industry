<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html>
<meta charset="ko">
<%@ include file="./include/head.jsp" %>
<link rel="stylesheet" href="/css/user_css/support-project.css">
<body>
	<%@ include file="./include/header.jsp" %>
    <div class="visual-section">
        <div class="opacity-back"></div>
        <div class="content">
            <h2>지원사업</h2>
            <h1>‘영화특별시’가 되기 위한<br />다양한 사업을 진행하고 있습니다</h1>
        </div>
    </div>
    <div class="main-section">
        <ul class="navigator">
            <li>
                <a class="active" href="">로케이션 지원사업</a>
            </li>
            <li>
                <a href="">독립영화 육성</a>
            </li>
            <li>
                <a href="">산업인력 양성</a>
            </li>
            <li>
                <a href="">시민참여 행사</a>
            </li>
        </ul>
        <h2 class="main-text">
            춘천에서 촬영하는 국내외 영상물의<br />
            촬영‧제작 지원을 통해 지역 경제 활성화에 기여하고,<br />
            지역 영화산업 생태계를 조성하기 위한 지원사업
        </h2>

        <ul class="list-container">
            <li>
                <a href="/support_view.do" rel="noopener noreferrer">
	                <span class="content">
	                    <span class="index">01</span>
	                    <p>[타부서 공고 건] SW융합 해커톤 대회 강원지역 참가팀 모집 공고</p>
	                </span>
	                <div class="row">
	                    <span class="date">2024.07.15</span>
	                    <div class="arrow">
	                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
	                            <mask id="mask0_95_1360" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0"
	                                width="24" height="24">
	                                <rect width="24" height="24" fill="#D9D9D9" />
	                            </mask>
	                            <g mask="url(#mask0_95_1360)">
	                                <path
	                                    d="M6.29425 17.6443L5.25 16.6L15.0905 6.75H6.14425V5.25H17.6443V16.75H16.1443V7.80375L6.29425 17.6443Z"
	                                    fill="black" />
	                            </g>
	                        </svg>
	                    </div>
	                </div>
                </a>
            </li>
        </ul>
        <div class="pagination">
            <button class="first-page page-button">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                    <path d="M11.7266 12L12.6666 11.06L9.61329 8L12.6666 4.94L11.7266 4L7.72663 8L11.7266 12Z"
                        fill="#242A30" />
                    <path d="M7.33332 12L8.27332 11.06L5.21998 8L8.27331 4.94L7.33331 4L3.33332 8L7.33332 12Z"
                        fill="#242A30" />
                </svg>
            </button>
            <button class="prev-page page-button">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                    <path d="M10.06 12L11 11.06L7.94667 8L11 4.94L10.06 4L6.06 8L10.06 12Z" fill="#242A30" />
                </svg>
            </button>
            <button class="page-button active">1</button>
            <button class="page-button">2</button>
            <button class="page-button">3</button>
            <button class="page-button else-page">...</button>
            <button class="page-button">10</button>
            <button class="next-page page-button">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                    <path d="M6.94 4L6 4.94L9.05333 8L6 11.06L6.94 12L10.94 8L6.94 4Z" fill="#242A30" />
                </svg>
            </button>
            <button class="last-page page-button">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                    <path d="M4.27325 4L3.33325 4.94L6.38659 8L3.33325 11.06L4.27325 12L8.27325 8L4.27325 4Z"
                        fill="#242A30" />
                    <path d="M8.66656 4L7.72656 4.94L10.7799 8L7.72656 11.06L8.66656 12L12.6666 8L8.66656 4Z"
                        fill="#242A30" />
                </svg>
            </button>
        </div>
    </div>
	
	<%@ include file="./include/footer.jsp" %>
	<script src="/js/user_js/header.js"></script>
	<script src="/js/user_js/support-project.js"></script>
</body>
</html>