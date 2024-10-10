<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



<!DOCTYPE html>
<html lang="ko">
	<c:import url="../main/head.jsp">
    	<c:param name="pageTitle" value="지원사업 신청리스트"/>
    </c:import>
    
    <%@include file="../main/lnb.jsp" %>
		<c:import url="../main/header.jsp">
	    	<c:param name="title" value="지원사업관리"/>
	    	<c:param name="subtitle" value="지원사업 신청리스트"/>
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
	                    <ul class="listHead support_apply">
	                        <li>순서</li>
	                        <li>카테고리</li>
	                        <li>지원신청일</li>
	                        <li>신청자</li>
	                        <li>연락처</li>
	                        <li>소속</li>
	                        <li>직책</li>
	                        <li>등록일</li>
	                        <li>상태</li>
	                    </ul>
	                    <ul class="listBody support_apply">
	                    	<c:forEach var="resultList" items="${resultList}" varStatus="status">
		                        <li>
		                            <c:if test="${pictVO.pageNumber eq 1}">
										<p>${support_cnt - status.index}</p>					
									</c:if>
									<c:if test="${pictVO.pageNumber ne 1}">
										<p>${support_cnt - (status.index +  ((pictVO.pageNumber - 1) * 5))}</p>
									</c:if>
		                            <p>
		                            	<c:if test="${resultList.category eq '1'}">VFX특화 산업육성사업</c:if>
		                            	<c:if test="${resultList.category eq '2'}">독립영화육성 및 시민참여행사</c:if>
		                            	<c:if test="${resultList.category eq '3'}">로케이션 지원사업</c:if>
	                            	</p>
		                            <p>${resultList.start_date} ~ ${resultList.end_date}</p>
		                            <p>${resultList.name}</p>
		                            <p>${resultList.tel}</p>
		                            <p>${resultList.company}</p>
		                            <p>${resultList.depart}</p>
		                            <p>${resultList.reg_date}</p>
		                            <select name="category" id="category" class="lgThinInput" style="width: 250px">
		                                <option value="1" <c:if test="${pictVO.category eq '1'}">selected</c:if>>신청</option>
		                                <option value="2" <c:if test="${pictVO.category eq '2'}">selected</c:if>>승인</option>
		                                <option value="3" <c:if test="${pictVO.category eq '3'}">selected</c:if>>삭제</option>
		                            </select>
		                        </li>
	                        </c:forEach>
	                    </ul>
	                    <!-- 
	                    <div class="listButton">
	                        <a href="/support/support_register.do"><img src="/img/admin/add.png" alt="등록버튼">등록</a>
	                    </div>
	                     -->
	                    <div class="pagination">
	                    	<c:if test="${pictVO.pageNumber ne 1}">
								<li><a href="/support/support_apply_list.do?search_text=${param.search_text}&pageNumber=${pictVO.pageNumber - 10 < 1 ? 1 : pictVO.pageNumber - 10}"><img src="/img/admin/prev.png" alt=""></a></li>
							</c:if>	
							
							<c:forEach var="i" begin="${pictVO.startPage}" end="${pictVO.endPage}">
								<c:if test="${i eq pictVO.pageNumber}">
									<li class="active"><a href="/support/support_apply_list.do?search_text=${param.search_text}&pageNumber=${i}" >${i}</a></li>
								</c:if>
								<c:if test="${i ne pictVO.pageNumber}">
									<li><a href="/support/support_apply_list.do?search_text=${param.search_text}&pageNumber=${i}" >${i}</a></li>
								</c:if>
							</c:forEach>	
	                    
		                    <c:if test="${pictVO.lastPage ne pictVO.pageNumber}">
								<li><a href="/support/support_apply_list.do?search_text=${param.search_text}&pageNumber=${pictVO.pageNumber + 10 > pictVO.lastPage ?  pictVO.lastPage : pictVO.pageNumber + 10}"><img src="/img/admin/next.png" alt=""></a></li>
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
				location.href= "/support/support_register.do?idx="+ idx;
			}
			function board_list(){
				location.href= "/support/support_list.do";
			}

			function board_delete(idx) {
				if (confirm("삭제 하시겠습니까?")) {
					$('#idx').val(idx)
					$("#register").attr("action", "/support/support_apply_delete.do");
					$("#register").submit();
				}
			}
			function search(){
				$("#search_fm").attr("action", "/support/support_apply_list.do");
				$("#search_fm").submit();
			}
		</script>
            
		<script src="../../../../../js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="../../../../../js/scripts.js"></script>
		<script src="../../../../../js/Chart.min.js" crossorigin="anonymous"></script>
		<script src="../../../../../js/simple-datatables@latest.js" crossorigin="anonymous"></script>
		
    </body>
</html>