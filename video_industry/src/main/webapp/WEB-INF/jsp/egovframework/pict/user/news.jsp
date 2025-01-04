<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"     uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<meta charset="ko">
<%@ include file="./include/head.jsp" %>
<link rel="stylesheet" href="/css/user_css/support-project.css">
<body>
	<%@ include file="./include/header.jsp" %>
    <div class="visual-section notice">
        <div class="opacity-back"></div>
        <div class="content">
            <h2>센터소식</h2>
            <h1>춘천시영상산업지원센터의<br>다양한 소식을 들려드릴게요</h1>
        </div>
    </div>
    <div class="main-section">
        <ul class="navigator notice">
            <li>
                <a href="/notice.do">공지사항</a>
            </li>
            <li>
                <a class="active" href="/news.do">보도자료</a>
            </li>
        </ul>

        <c:choose>
            <c:when test="${empty resultList}">
                <div class="no-data">
                    <p>등록된 게시물이 없습니다.</p>
                </div>
            </c:when>
            <c:otherwise>
                <ul class="list-container notice">
                    <c:forEach var="resultList" items="${resultList}" varStatus="status">
                        <li>
                            <a href="news_view.do?idx=${resultList.idx}" rel="noopener noreferrer">
                                <span class="content">
                                    <span class="index">${status.count}</span>
                                    <p>${resultList.title}</p>
                                </span>
                                <div class="row">
                                    <span class="date">${fn:substring(resultList.reg_date,0,11)}</span>
                                    <div class="arrow">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                            <mask id="mask0_95_1360" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="24" height="24">
                                                <rect width="24" height="24" fill="#D9D9D9" />
                                            </mask>
                                            <g mask="url(#mask0_95_1360)">
                                                <path d="M6.29425 17.6443L5.25 16.6L15.0905 6.75H6.14425V5.25H17.6443V16.75H16.1443V7.80375L6.29425 17.6443Z" fill="black" />
                                            </g>
                                        </svg>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
                </ul>
                <div class="pagination">
                    <c:if test="${pictVO.pageNumber ne 1}">
                        <a class="first-page page-button" href="/news.do?search_text=${param.search_text}&pageNumber=${pictVO.pageNumber - 10 < 1 ? 1 : pictVO.pageNumber - 10}">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                                <path d="M11.7266 12L12.6666 11.06L9.61329 8L12.6666 4.94L11.7266 4L7.72663 8L11.7266 12Z" fill="#242A30" />
                                <path d="M7.33332 12L8.27332 11.06L5.21998 8L8.27331 4.94L7.33331 4L3.33332 8L7.33332 12Z" fill="#242A30" />
                            </svg>
                        </a>
                    </c:if>
        
                    <c:forEach var="i" begin="${pictVO.startPage}" end="${pictVO.endPage}">
                        <c:if test="${i eq pictVO.pageNumber}">
                            <a class="page-button active" href="/news.do?search_text=${param.search_text}&pageNumber=${i}">${i}</a>
                        </c:if>
                        <c:if test="${i ne pictVO.pageNumber}">
                            <a class="page-button" href="/news.do?search_text=${param.search_text}&pageNumber=${i}">${i}</a>
                        </c:if>
                    </c:forEach>
        
                    <c:if test="${pictVO.lastPage ne pictVO.pageNumber}">
                        <a class="last-page page-button" href="/news.do?search_text=${param.search_text}&pageNumber=${pictVO.pageNumber + 10 > pictVO.lastPage ? pictVO.lastPage : pictVO.pageNumber + 10}">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                                <path d="M4.27325 4L3.33325 4.94L6.38659 8L3.33325 11.06L4.27325 12L8.27325 8L4.27325 4Z" fill="#242A30" />
                                <path d="M8.66656 4L7.72656 4.94L10.7799 8L7.72656 11.06L8.66656 12L12.6666 8L8.66656 4Z" fill="#242A30" />
                            </svg>
                        </a>
                    </c:if>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
	
	<%@ include file="./include/footer.jsp" %>
	<script src="/js/user_js/header.js"></script>
	<script src="/js/user_js/support-project.js"></script>
</body>
</html>