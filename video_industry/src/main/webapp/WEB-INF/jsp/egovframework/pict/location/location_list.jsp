<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



<!DOCTYPE html>
<html lang="ko">
	<c:import url="../main/head.jsp">
    	<c:param name="pageTitle" value="로케이션 리스트"/>
    </c:import>
    
    <%@include file="../main/lnb.jsp" %>
		<c:import url="../main/header.jsp">
	    	<c:param name="title" value="로케이션관리"/>
	    	<c:param name="subtitle" value="로케이션 리스트"/>
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
	                    <ul class="listHead location">
	                        <li>순서</li>
	                        <li>카테고리</li>
	                        <li>서브카테고리</li>
	                        <li>명칭</li>
	                        <li>연락처</li>
	                        <li>주소지</li>
	                        <li>삭제</li>
	                    </ul>
	                    <ul class="listBody location">
	                    	<c:forEach var="resultList" items="${resultList}" varStatus="status">
		                        <li>
		                            <c:if test="${pictVO.pageNumber eq 1}">
										<p>${board_cnt - status.index}</p>					
									</c:if>
									<c:if test="${pictVO.pageNumber ne 1}">
										<p>${board_cnt - (status.index +  ((pictVO.pageNumber - 1) * 20))}</p>
									</c:if>
		                            <p>${resultList.category}</p>
		                            <p>
		                            	<c:if test="${resultList.location_category eq '1'}">공공/기관</c:if>
		                            	<c:if test="${resultList.location_category eq '2'}">관광/공원/카페</c:if>
		                            	<c:if test="${resultList.location_category eq '3'}">도로/교통</c:if>
		                            	<c:if test="${resultList.location_category eq '4'}">숙박시설</c:if>
		                            	<c:if test="${resultList.location_category eq '5'}">야외스튜디오</c:if>
		                            	<c:if test="${resultList.location_category eq '6'}">유휴시설</c:if>
		                            	<c:if test="${resultList.location_category eq '7'}">종교/전통</c:if>
		                            	<c:if test="${resultList.location_category eq '8'}">기타</c:if>
		                            </p>
		                            <a href="/location/location_register.do?idx=${resultList.idx}"><p>${resultList.title}</p></a>
		                            <p>${resultList.tel}</p>
		                            <p>${resultList.address}</p>
		                            <p class="delete"><a href="#lnk" onclick="board_delete('${resultList.idx}')"></a></p>
		                        </li>
	                        </c:forEach>
	                    </ul>
	                    
	                    <div class="listButton">
	                        <a href="/location/location_register.do"><img src="/img/admin/add.png" alt="등록버튼">등록</a>
	                    </div>
	                    
	                    <div class="pagination">
	                    	<c:if test="${pictVO.pageNumber ne 1}">
								<li><a href="/location/location_list.do?search_text=${param.search_text}&pageNumber=${pictVO.pageNumber - 10 < 1 ? 1 : pictVO.pageNumber - 10}"><img src="/img/admin/prev.png" alt=""></a></li>
							</c:if>	
							
							<c:forEach var="i" begin="${pictVO.startPage}" end="${pictVO.endPage}">
								<c:if test="${i eq pictVO.pageNumber}">
									<li class="active"><a href="/location/location_list.do?search_text=${param.search_text}&pageNumber=${i}" >${i}</a></li>
								</c:if>
								<c:if test="${i ne pictVO.pageNumber}">
									<li><a href="/location/location_list.do?search_text=${param.search_text}&pageNumber=${i}" >${i}</a></li>
								</c:if>
							</c:forEach>	
	                    
		                    <c:if test="${pictVO.lastPage ne pictVO.pageNumber}">
								<li><a href="/location/location_list.do?search_text=${param.search_text}&pageNumber=${pictVO.pageNumber + 10 > pictVO.lastPage ?  pictVO.lastPage : pictVO.pageNumber + 10}"><img src="/img/admin/next.png" alt=""></a></li>
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
				location.href= "/board/board_register.do?idx="+ idx;
			}
			function board_list(){
				location.href= "/board/board_list.do";
			}

			function board_delete(idx) {
				if (confirm("삭제 하시겠습니까?")) {
					$('#idx').val(idx)
					$("#register").attr("action", "/location/location_delete.do");
					$("#register").submit();
				}
			}
			function search(){
				$("#search_fm").attr("action", "/location/location_list.do");
				$("#search_fm").submit();
			}
		</script>
            
		<script src="../../../../../js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="../../../../../js/scripts.js"></script>
		<script src="../../../../../js/Chart.min.js" crossorigin="anonymous"></script>
		<script src="../../../../../js/simple-datatables@latest.js" crossorigin="anonymous"></script>
		
    </body>
</html>