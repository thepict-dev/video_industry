<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script type="text/javascript" src="/js/HuskyEZCreator.js" charset="utf-8"></script>

<!DOCTYPE html>
<html lang="ko">
	<c:import url="../main/head.jsp">
    	<c:param name="pageTitle" value="영화 등록"/>
    </c:import>
    <body>
	    
		<%@include file="../main/lnb.jsp" %>
		<c:import url="../main/header.jsp">
	    	<c:param name="title" value="영화 관리"/>
	    	<c:param name="subtitle" value="영화 등록"/>
	    </c:import>
	    <div class="contentsContainer">
	        <div class="listContainer">
	            <div class="listInner">
	            	<form action="" id="register" name="register" method="post" enctype="multipart/form-data" class="boardForm">
		            	<div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">로케이션*</p>
	                            <select name="location_id" id="location_id" class="lgThinInput" style="width: 250px">
	                            	<option value="" <c:if test="${pictVO.location_id eq '' || pictVO.location_id eq null || pictVO.location_id eq undefined}">selected</c:if>>로케이션선택</option>
	                            	<c:forEach var="resultList" items="${resultList}" varStatus="status">
	                                	<option value="${resultList.idx}" <c:if test="${pictVO.location_id eq resultList.idx}">selected</c:if>>${resultList.title}</option>
	                                </c:forEach>
	                                
	                            </select>
	                        </div>
	                    </div>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">제목*</p>
	                            <input type="text" name="title" id="title" placeholder="내용을 입력하세요…" value="${pictVO.title}">
	                        </div>
	                    </div>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">개봉일</p>
	                            <input type="text" name="open_date" id="open_date" placeholder="내용을 입력하세요…" value="${pictVO.open_date}">
	                        </div>
	                    </div>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">메인노출순서</p>
	                            <input type="text" name="main_y" id="main_y" placeholder="메인에 노출을 원하지 않으면 공란으로 설정해주세요." value="${pictVO.main_y}">
	                        </div>
	                    </div>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox" style="width:100%">
	                            <p class="inputCaption">내용*</p>
	                            <textarea name="text" id="text" cols="50" rows="10" class="txt" style="width:100%;">${pictVO.text}</textarea>
                            	<!-- 에디터 설정 -->
								<script type="text/javascript">
									var oEditors = [];
									nhn.husky.EZCreator.createInIFrame({
										oAppRef: oEditors,
										elPlaceHolder: "text", //textarea에서 지정한 id와 일치해야 합니다.
										sSkinURI: "/js/SmartEditor2Skin.html",
										fCreator: "createSEditor2"
									});
								</script>
	                        </div>
	                    </div>
   	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">첨부파일
	                                <label for="attach_file">파일추가</label>
	                                <input type="file" id="attach_file" name="attach_file" multiple style="display: none;" class="jy_input">
	                            </p>
	                            <div class="fileList">
	                                <p id="file_name_1">${pictVO.img_thumb}</p>
	                                <button type="button" onclick="fn_file_delete(); return false;"><img src="/img/admin/close2.png" alt=""></button>
	                            </div>
	                            <p class="fileCaption">첨부 파일은 10MB 아래의 확장자 파일만 가능합니다.<br>
	                                (jpeg, png, gif, bmp, tif)</p>
	                        </div>
	                    </div>
	                    
	                    
	                    <div class="btnContainer">
	                        <a href="/board/board_list.do" class="normalButton white">목록으로</a>
	                        <a href="#lnk" onclick="button1_click()" class="basicButton blue"><img src="/img/admin/add2.png" alt="완료">완료</a>
	                    </div>
	                    
	                    <input type='hidden' name="saveType" id="saveType" value='${pictVO.saveType}' /> 
						<input type='hidden' name="idx" id="idx" value='${pictVO.idx}' /> 
	                </form>
	            </div>
	        </div>
	    </div>
	    <script>
			function fn_file_delete(fileidx) {
				
				if(saveType == 'update' && confirm("해당 첨부파일을 삭제하시겠습니까?")) {
					
					$("#file_name_" + fileidx).text("");
					$("#file_" + fileidx).val("");
					
					if($("#idx").val()) {
						$("#register").attr("action", "/movie/movie_file_delete.do");
						$("#register").submit();
					}
				} else {
					$("#file_name_1").text('');
				}
				return false;
			}

		 	// 파일 입력 변경 이벤트 리스너
			$(".jy_input").on('change', function(e){
				const fileName = this.files[0].name;
				$("#file_name_1").text(fileName);
			})
	
		    // 초기 상태에서 fileList 숨김
		    
		    
			function button1_click() {
				var title = $('#title').val();
				
				if (title == "" || title == undefined) {
					window.alert("제목을 입력해주세요.");
					$('#title').focus();
					return false;
				}

				var text = "등록하시겠습니까?";
				if (saveType == 'update') {
					text = "수정하시겠습니까?"
				}
				oEditors[0].exec("UPDATE_CONTENTS_FIELD", []);
				if (confirm(text)) {
					$("#register").attr("action", "/movie/movie_save.do");
					$("#register").submit();
				}
			}
		</script>
	</body>
	
</html>