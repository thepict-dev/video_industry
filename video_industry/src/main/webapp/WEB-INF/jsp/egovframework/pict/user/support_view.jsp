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
        <c:if test="${pictVO.file_url1 ne '' && pictVO.file_url1 ne null && pictVO.file_url1 ne undefined}">
	        <div class="addFile">
	            <a href="${pictVO.file_url1}" download>
	                <img src="/img/user_img/file.png" alt="">
					${fn:replace(pictVO.file_url1, '/user1/upload_file/video_industry/', '')}
	            </a>
	        </div>
        </c:if>
        <div class="buttons">
            <a href="javascript:history.back()" class="go-list">목록으로</a>
            <button id="goForm" class="go-form">신청하기</button>
        </div>
    </main>

    <form action="" id="register" name="register" method="post" enctype="multipart/form-data">
	    <div class="form-outter">
	        <div class="form-container">
	            <div class="form-header">
	                <h2>로케이션 신청하기</h2>
	                <button class="close">
	                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30" fill="none">
	                        <mask id="mask0_20_1381" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0"
	                            width="30" height="30">
	                            <rect width="30" height="30" fill="#D9D9D9" />
	                        </mask>
	                        <g mask="url(#mask0_20_1381)">
	                            <path
	                                d="M9.05375 21.3075L8 20.2538L13.6 14.6538L8 9.05375L9.05375 8L14.6537 13.6L20.2537 8L21.3075 9.05375L15.7075 14.6538L21.3075 20.2538L20.2537 21.3075L14.6537 15.7075L9.05375 21.3075Z"
	                                fill="white" />
	                        </g>
	                    </svg>
	                </button>
	            </div>
	            <div class="scroll-container">
	                <div class="form">
	                    <div class="row">
	                        <div class="input">
	                            <h4>로케이션명</h4>
	                            <input type="text" disabled value="${pictVO.title}" />
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="input">
	                            <h4>로케이션 신청일</h4>
	                            <div class="date-range-container">
	                                <div class="date-container">
	                                    <input type="date" name="start_date" id="start_date">
	                                </div>
	                                <div class="dash">
	                                    <svg xmlns="http://www.w3.org/2000/svg" width="13" height="2" viewBox="0 0 13 2"
	                                        fill="none">
	                                        <path d="M0.75 1H12.75" stroke="#8B96A2" />
	                                    </svg>
	                                </div>
	                                <div class="date-container">
	                                    <input type="date" name="end_date" id="end_date">
	                                </div>
	                            </div>
	                        </div>
	                        <div class="input">
	                            <h4>신청인</h4>
	                            <input type="text" id="name" name="name" placeholder="이름을 입력하세요" />
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="input">
	                            <h4>전화번호</h4>
	                            <input type="text" id="tel" name="tel" placeholder="전화번호를 입력하세요" />
	                        </div>
	                        <div class="input">
	                            <h4>이메일</h4>
	                            <input type="text" id="email" name="email" placeholder="이메일을 입력하세요" />
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="input">
	                            <h4>소속</h4>
	                            <input type="text" id="company" name="company" placeholder="소속을 입력하세요" />
	                        </div>
	                        <div class="input">
	                            <h4>직책</h4>
	                            <input type="text" id="depart" name="depart" placeholder="직책을 입력하세요" />
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="input">
	                            <h4>구분</h4>
	                            <div class="radio-container">
	                                <label class="custom" for="type_1">
	                                    <input type="radio" id="type_1" name="category" value="1">
	                                    <div class="custom-radio"></div>
	                                    <span>제작사</span>
	                                </label>
	                                <label class="custom" for="type_2">
	                                    <input type="radio" id="type_2" name="category" value="2">
	                                    <div class="custom-radio"></div>
	                                    <span>배급사</span>
	                                </label>
	                                <label class="custom" for="type_3">
	                                    <input type="radio" id="type_3" name="category" value="3">
	                                    <div class="custom-radio"></div>
	                                    <span>개인</span>
	                                </label>
	                                <label class="custom" for="type_4">
	                                    <input type="radio" id="type_4" name="category" value="4">
	                                    <div class="custom-radio"></div>
	                                    <span>업체</span>
	                                </label>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="input">
	                            <h4>작품명</h4>
	                            <input type="text" placeholder="작품명을 입력하세요" id="title" name="title" />
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="input">
	                            <h4>첨부파일</h4>
	                            <div class="file-tap">
	                                <label for="attach_file" class="custom-file">
	                                    <input id="attach_file" type="file" name="attach_file" style="display: none;"/>
	                                    <div class="file-name">이곳을 클릭해 파일을 첨부해주세요.</div>
	                                    <button type="button" class="file-delete" style="display: none;"><img src="/img/admin/delete.png" alt="삭제"></button>
	                                </label>
	                                <div class="texts">
	                                    ∙ 첨부파일의 용량은 50메가바이트(mb)를 넘을 수 없습니다.<br />
	                                    ∙ 지원 서류는 1개 파일만 업로드 가능합니다. 지원서류가 여러 파일일 경우, 폴더에 넣어 1개 파일로 압축한 형태로 업로드해주세요.
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="form-footer">
	                    <div class="checkbox-container">
	                        <label for="agree">
	                            <input type="checkbox" name="agree" id="agree" value="1">
	                            <span>개인정보사용에 동의합니다</span>
	                        </label>
	                    </div>
	                    <div class="buttons agree">
	                        <a href="#lnk" class="go-list">선택취소</a>
	                        <a href="#lnk" class="go-form" onclick="fn_submit()">신청하기</a>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    <input type="hidden" id="idx" name="idx" value="${pictVO.idx}">
	    <input type="hidden" id="main_category" name="main_category" value="${pictVO.category}">
    </form>
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
    
    document.getElementById('attach_file').addEventListener('change', function() {
        const fileName = this.files[0] ? this.files[0].name : '이곳을 클릭해 파일을 첨부해주세요.';
        document.querySelector('.file-name').textContent = fileName;
        
        // 삭제 버튼 표시
        const deleteBtn = document.querySelector('.file-delete');
        deleteBtn.style.display = this.files[0] ? 'inline-block' : 'none';
    });
    
    document.querySelector('.file-delete').addEventListener('click', function(e) {
        e.preventDefault();
        const fileInput = document.getElementById('attach_file');
        fileInput.value = ''; // 파일 입력 초기화
        document.querySelector('.file-name').textContent = '이곳을 클릭해 파일을 첨부해주세요.';
        this.style.display = 'none';
    });
    
    </script>
	<%@ include file="./include/footer.jsp" %>
	<script src="/js/user_js/header.js"></script>
	<script src="/js/user_js/support-project-detail.js"></script>
</body>
</html>
