<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



<!DOCTYPE html>
<html lang="ko">
	<c:import url="../main/head.jsp">
    	<c:param name="pageTitle" value="영화 리스트"/>
    </c:import>
    
    <%@include file="../main/lnb.jsp" %>
		<c:import url="../main/header.jsp">
	    	<c:param name="title" value="영화 관리"/>
	    	<c:param name="subtitle" value="영화 리스트"/>
	    </c:import>
	    <div class="contentsContainer">
	        <div class="listContainer">
	            <div class="listInner">
	                <form action="" class="countList" id="search_fm" name="search_fm" method="get">
	                    <p>총 <span>${totalCnt}</span>개</p>
	                    <div class="inputsContainer">
	                        <div class="inputBox listSearch">
	                            <input type="text" name="search_text" id="search_text" placeholder="내용을 입력하세요…" value="${pictVO.search_text}">
	                            <a href="#lnk" onclick="search_list();"><img src="/img/admin/search2.png" alt=""></a>
	                        </div>
	                    </div>
	                </form>
	               
	                <div class="ListWrpper">
	                    <ul class="listHead movielist">
	                        <li>순서</li>
	                        <li>로케이션</li>
	                        <li>제목</li>
	                        <li>개봉일</li>
	                        <li>메인노출순서</li>
	                        <li>작성일</li>
	                        <li>삭제</li>
	                    </ul>
	                    <ul class="listBody movielist">
	                    	<c:forEach var="resultList" items="${resultList}" varStatus="status">
		                        <li>
		                            <c:if test="${pictVO.pageNumber eq 1}">
										<p>${movie_cnt - status.index}</p>					
									</c:if>
									<c:if test="${pictVO.pageNumber ne 1}">
										<p>${movie_cnt - (status.index +  ((pictVO.pageNumber - 1) * 20))}</p>
									</c:if>
									<p>${resultList.location_name}</p>
									<a href="/movie/movie_register.do?idx=${resultList.idx}"><p>${resultList.title}</p></a>
									<p>${resultList.open_date}</p>
									<p>${resultList.main_y}</p>
		                            <p>${resultList.reg_date}</p>
		                            <p class="delete"><a href="#lnk" onclick="board_delete('${resultList.idx}')"></a></p>
		                        </li>
	                        </c:forEach>
	                    </ul>
	                    
	                    <div class="listButton">
	                        <a href="/movie/movie_register.do"><img src="/img/admin/add.png" alt="등록버튼">등록</a>
	                    </div>
	                    <div class="pagination">
		                    <c:if test="${pictVO.pageNumber ne 1}">
		                        <a class="first-page page-button" href="/movie/movie_list.do?search_text=${param.search_text}&pageNumber=${pictVO.pageNumber - 10 < 1 ? 1 : pictVO.pageNumber - 10}">
		                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
		                                <path d="M11.7266 12L12.6666 11.06L9.61329 8L12.6666 4.94L11.7266 4L7.72663 8L11.7266 12Z" fill="#242A30" />
		                                <path d="M7.33332 12L8.27332 11.06L5.21998 8L8.27331 4.94L7.33331 4L3.33332 8L7.33332 12Z" fill="#242A30" />
		                            </svg>
		                        </a>
		                    </c:if>
		                    <c:forEach var="i" begin="${pictVO.startPage}" end="${pictVO.endPage}">
		                        <c:if test="${i eq pictVO.pageNumber}">
		                            <a class="page-button active" href="/movie/movie_list.do?search_text=${param.search_text}&pageNumber=${i}">${i}</a>
		                        </c:if>
		                        <c:if test="${i ne pictVO.pageNumber}">
		                            <a class="page-button" href="/movie/movie_list.do?search_text=${param.search_text}&pageNumber=${i}">${i}</a>
		                        </c:if>
		                    </c:forEach>
		        			
		                    <c:if test="${pictVO.lastPage ne pictVO.pageNumber and pictVO.lastPage ne 0}">
		                        <a class="last-page page-button" href="/movie/movie_list.do?search_text=${param.search_text}&pageNumber=${pictVO.pageNumber + 10 > pictVO.lastPage ? pictVO.lastPage : pictVO.pageNumber + 10}">
		                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
		                                <path d="M4.27325 4L3.33325 4.94L6.38659 8L3.33325 11.06L4.27325 12L8.27325 8L4.27325 4Z" fill="#242A30" />
		                                <path d="M8.66656 4L7.72656 4.94L10.7799 8L7.72656 11.06L8.66656 12L12.6666 8L8.66656 4Z" fill="#242A30" />
		                            </svg>
		                        </a>
		                    </c:if>
		                </div>
	                </div>
	            </div>
	        </div>
	    </div>
		<form action="" id="register" name="register" method="post" enctype="multipart/form-data">
			<input type='hidden' name="idx" id="idx" value='' />
			<input type='hidden' name="use_at" id="use_at" value='' />
			<input type='hidden' name="type" id="type" value='' />
		</form>
		<script>

			function board_mod(idx){
				location.href= "/movie/movie_register.do?idx="+ idx;
			}
			function board_list(){
				location.href= "/movie/movie_list.do";
			}

			function board_delete(idx) {
				if (confirm("삭제 하시겠습니까?")) {
					$('#idx').val(idx)
					$("#register").attr("action", "/movie/movie_delete.do");
					$("#register").submit();
				}
			}
			function search(){
				$("#search_fm").attr("action", "/movie/movie_list.do");
				$("#search_fm").submit();
			}
		</script>
            
		<script src="../../../../../js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="../../../../../js/scripts.js"></script>
		<script src="../../../../../js/Chart.min.js" crossorigin="anonymous"></script>
		<script src="../../../../../js/simple-datatables@latest.js" crossorigin="anonymous"></script>
		
    </body>
</html>