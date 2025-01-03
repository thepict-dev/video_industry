<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html>
<meta charset="ko">
<%@ include file="./include/head.jsp" %>
<link rel="stylesheet" href="/css/user_css/support-project-detail.css">
<body>
	<%@ include file="./include/header.jsp" %>
    <main class="container">
        <div class="content-header">
            <h1>${pictVO.title}</h1>
            <p>${pictVO.reg_date}</p>
        </div>
        <div class="content">
            <p>${pictVO.text}</p>
        </div>
        <div class="addFile">
        	<c:if test="${pictVO.file_url1 ne '' && pictVO.file_url1 ne null && pictVO.file_url1 ne undefined}">
	            <a href="#lnk" download>
	                <img src="/img/user_img/file.png" alt="">
	                ${pictVO.file_url1}
	            </a>
            </c:if>
        </div>
        <div class="buttons">
            <a href="/notice.do" class="go-list">목록으로</a>
        </div>
    </main>

	<%@ include file="./include/footer.jsp" %>
	<script src="/js/user_js/header.js"></script>
</body>
</html>