<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html>
<meta charset="ko">
<%@ include file="./include/head.jsp" %>
<link rel="stylesheet" href="/css/user_css/industry-db-detail.css">
<body>
	<%@ include file="./include/header.jsp" %>
    <main class="container">
        <div class="content-header">
            <a href="/industry_db.do">
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 40 40" fill="none">
                    <mask id="mask0_86_3625" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="40"
                        height="40">
                        <rect width="40" height="40" fill="#D9D9D9" />
                    </mask>
                    <g mask="url(#mask0_86_3625)">
                        <path
                            d="M12.2883 21.25L21.7821 30.7437L20 32.5L7.5 20L20 7.5L21.7821 9.25625L12.2883 18.75H32.5V21.25H12.2883Z"
                            fill="#1C1B1F" />
                    </g>
                </svg>
            </a>
            <div class="summary">
                <p>법인</p>
                <h1>주식회사 더픽트</h1>
            </div>
        </div>
        <ul class="navigator">
            <li>
                <a class="active" href="/industry_portfolio.do">포트폴리오</a>
            </li>
            <li>
                <a href="/industry_info.do">회사정보</a>
            </li>
        </ul>
         <div class="portfolio-container">
            <ul class="list">
                <li class="active">
                    <a href="#lnk">
                        강원워케이션 홍보동영상(강원관광재단)
                    </a>
                </li>
                <li>
                    <a href="#lnk">
                        고향사랑기부제 홍보동영상 (강원특별자치도청)
                    </a>
                </li>
                <li>
                    <a href="#lnk">
                        생명존중캠페인 홍보동영상 (강원특별자치도교육청)
                    </a>
                </li>
            </ul>
            <div class="portfolio active">
                <img src="/img/user_img/main.webp" alt="" srcset="">
                <div class="hover">
                    <h1>주식회사 더픽트</h1>
                    <a href="">
                        <span>포트폴리오 보러가기</span>
                        <i>
                            <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48"
                                fill="none">
                                <mask id="mask0_26_5546" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0"
                                    width="48" height="48">
                                    <rect width="48" height="48" fill="#D9D9D9" />
                                </mask>
                                <g mask="url(#mask0_26_5546)">
                                    <path
                                        d="M12.5885 35.2885L10.5 33.2L30.181 13.5H12.2885V10.5H35.2885V33.5H32.2885V15.6075L12.5885 35.2885Z"
                                        fill="white" />
                                </g>
                            </svg>
                        </i>
                    </a>
                    <p>고향사랑기부제 홍보동영상 (강원특별자치도청)</p>
                </div>
            </div>
            <div class="portfolio"></div>
            <div class="portfolio"></div>
        </div>
    </main>
	<%@ include file="./include/footer.jsp" %>
	<script src="/js/user_js/header.js"></script>
	<script src="/js/user_js/industry-db-detail.js"></script>
</body>
</html>