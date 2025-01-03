<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

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
                <a class="<c:if test="${pictVO.category eq '1' or pictVO.category == null}"> active</c:if>" href="/support.do?category=1">VFX특화 산업육성사업</a>
            </li>
            <li>
                <a class="<c:if test='${pictVO.category eq "3"}'> active</c:if>" href="/support.do?category=3">로케이션 지원사업</a>
            </li>
            <li>
                <a class="<c:if test='${pictVO.category eq "2"}'> active</c:if>" href="/support.do?category=2">독립영화육성 및 시민참여행사</a>
            </li>
        </ul>
        <!-- 
        <h2 class="main-text">춘천에서 촬영하는 국내외 영상물의<br /> 촬영‧제작 지원을 통해 지역 경제 활성화에 기여하고,<br /> 지역 영화산업 생태계를 조성하기 위한 지원사업</h2>
        -->
        <c:if test="${pictVO.category eq '1'}">
        	<h2 class="main-text">아시아 최대 VFX산업 클러스터 조성을 위한 특화 산업 육성</h2>
       	</c:if>
       	<c:if test="${pictVO.category eq '2'}">
       		<h2 class="main-text">지역 독립‧예술 영화 활성화 및 춘천시민들의<br>영상문화 향유권 확대를 위한 시민참여 행사 추진</h2>
       	</c:if>
       	<c:if test="${pictVO.category eq '3'}">
        	<h2 class="main-text">춘천에서 촬영하는 국내외 영상물의 촬영‧제작 지원을 통해 지역 경제 활성화에 기여하고<br>지역영화산업 생태계를 조성하기 위한 지원사업</h2>
       	</c:if>
        
        <ul class="list-container">
        	<c:forEach var="resultList" items="${resultList}" varStatus="status">
	            <li>
	                <a href="/support_view.do?idx=${resultList.idx}" rel="noopener noreferrer">
		                <span class="content">
		                    <span class="index">${status.count}</span>
		                    <p>${resultList.title}</p>
		                </span>
		                <div class="row">
		                    <span class="date">	${fn:substring(resultList.reg_date,0,11) }</span>
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
            </c:forEach>
        </ul>
       
        <div class="pagination">
			<c:if test="${pictVO.pageNumber ne 1}">
				<a class="first-page page-button" href="/support.do?category=${pictVO.category}&search_text=${param.search_text}&pageNumber=${pictVO.pageNumber - 10 < 1 ? 1 : pictVO.pageNumber - 10}">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
	                    <path d="M11.7266 12L12.6666 11.06L9.61329 8L12.6666 4.94L11.7266 4L7.72663 8L11.7266 12Z"
	                        fill="#242A30" />
	                    <path d="M7.33332 12L8.27332 11.06L5.21998 8L8.27331 4.94L7.33331 4L3.33332 8L7.33332 12Z"
	                        fill="#242A30" />
                	</svg>
				</a>
			</c:if>	
		
			<c:forEach var="i" begin="${pictVO.startPage}" end="${pictVO.endPage}">
				<c:if test="${i eq pictVO.pageNumber}">
					<a class="page-button active" href="/support.do?category=${pictVO.category}&search_text=${param.search_text}&pageNumber=${i}" >${i}</a>
				</c:if>
				<c:if test="${i ne pictVO.pageNumber}">
					<a class="page-button" href="/support.do?category=${pictVO.category}&search_text=${param.search_text}&pageNumber=${i}" >${i}</a>
				</c:if>
			</c:forEach>	
		
			<c:if test="${pictVO.lastPage ne pictVO.pageNumber}">
				<a class="last-page page-button" href="/support.do?category=${pictVO.category}&search_text=${param.search_text}&pageNumber=${pictVO.pageNumber + 10 > pictVO.lastPage ?  pictVO.lastPage : pictVO.pageNumber + 10}">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
						<path d="M4.27325 4L3.33325 4.94L6.38659 8L3.33325 11.06L4.27325 12L8.27325 8L4.27325 4Z" fill="#242A30" />
                    	<path d="M8.66656 4L7.72656 4.94L10.7799 8L7.72656 11.06L8.66656 12L12.6666 8L8.66656 4Z" fill="#242A30" />
					</svg>
				</a>
			</c:if>
		</div>
    </div>
	
	<%@ include file="./include/footer.jsp" %>
	<script>
		function fn_submit(){
			var start_date = $('#start_date').val()
			var end_date = $('#end_date').val()
			var name = $('#name').val()
			var tel = $('#tel').val()
			var email = $('#email').val()
			var company = $('#company').val()
			var depart = $('#depart').val()
			var category = $(":input:radio[name=category]:checked").val();
			var title = $('#title').val()
			var attach_file = $('#attach_file').val()
			
			var agree = $(":input:checkbox[name=agree]:checked").val();
			
			if(start_date == null || start_date == undefined || start_date == ''){
				alert("시작 날짜를 입력해주세요.")
				$('#start_date').focus()
				return false;
			}
			if(end_date == null || end_date == undefined || end_date == ''){
				alert("종료 날짜를 입력해주세요.")
				$('#end_date').focus()
				return false;
			}
			if(name == null || name == undefined || name == ''){
				alert("신청인 성명을 입력해주세요.")
				$('#name').focus()
				return false;
			}
			if(tel == null || tel == undefined || tel == ''){
				alert("전화번호를 입력해주세요.")
				$('#tel').focus()
				return false;
			}
			if(email == null || email == undefined || email == ''){
				alert("이메일을 입력해주세요.")
				$('#email').focus()
				return false;
			}
			if(company == null || company == undefined || company == ''){
				alert("소속을 입력해주세요.")
				$('#company').focus()
				return false;
			}
			if(depart == null || depart == undefined || depart == ''){
				alert("직책을 입력해주세요.")
				$('#depart').focus()
				return false;
			}
			if(category == null || category == undefined || category == ''){
				alert("구분을 입력해주세요.")
				$('#category').focus()
				return false;
			}
			if(title == null || title == undefined || title == ''){
				alert("작품명을 입력해주세요.")
				$('#title').focus()
				return false;
			}
			if(attach_file == null || attach_file == undefined || attach_file == ''){
				alert("첨부파일을 업로드 해주세요.")
				$('#attach_file').focus()
				return false;
			}
			if(start_date > end_date){
				alert("시작날짜는 종료날짜보다 클 수 없습니다.")
				$('#end_date').focus()
				return false;
			}
			if(agree != '1'){
				alert("개인정보 사용에 동의해주세요.")
				$('#agree').focus()
				return false;
			}
			
			if (confirm("입력하신 정보로 신청하시겠습니까?")) {
				$("#register").attr("action", "/location_apply_save.do");
				$("#register").submit();
			}
		}
	</script>
	<script src="/js/user_js/header.js"></script>
	<script src="/js/user_js/support-project.js"></script>
</body>
</html>