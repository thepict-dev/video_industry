<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script type="text/javascript" src="/js/HuskyEZCreator.js" charset="utf-8"></script>

<!DOCTYPE html>
<html lang="ko">
	<c:import url="../main/head.jsp">
    	<c:param name="pageTitle" value="로케이션 등록"/>
    </c:import>
    <body>
	    
		<%@include file="../main/lnb.jsp" %>
		<c:import url="../main/header.jsp">
	    	<c:param name="title" value="로케이션 관리"/>
	    	<c:param name="subtitle" value="로케이션 등록"/>
	    </c:import>
	    <div class="contentsContainer">
	        <div class="listContainer">
	            <div class="listInner">
	            	<form action="" id="register" name="register" method="post" enctype="multipart/form-data" class="boardForm">
		            	<div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">카테고리*</p>
	                            <select name="category" id="category" class="lgThinInput">
	                                <option value="VR" <c:if test="${pictVO.category eq 'VR'}">selected</c:if>>VR</option>
	                                <option value="일반" <c:if test="${pictVO.category eq '일반'}">selected</c:if>>일반</option>
	                            </select>
	                        </div>
	                    </div>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">서브카테고리*</p>
	                            <select name="location_category" id="location_category" class="lgThinInput">
	                                <option value="1" <c:if test="${pictVO.location_category eq '1'}">selected</c:if>>공공/기관</option>
	                                <option value="2" <c:if test="${pictVO.location_category eq '2'}">selected</c:if>>관광/공원/카페</option>
	                                <option value="3" <c:if test="${pictVO.location_category eq '3'}">selected</c:if>>도로/교통</option>
	                                <option value="4" <c:if test="${pictVO.location_category eq '4'}">selected</c:if>>숙박시설</option>
	                                <option value="5" <c:if test="${pictVO.location_category eq '5'}">selected</c:if>>야외스튜디오</option>
	                                <option value="6" <c:if test="${pictVO.location_category eq '6'}">selected</c:if>>유휴시설</option>
	                                <option value="7" <c:if test="${pictVO.location_category eq '7'}">selected</c:if>>종교/전통</option>
	                                <option value="8" <c:if test="${pictVO.location_category eq '8'}">selected</c:if>>기타</option>
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
	                            <p class="inputCaption">메인노출순서(최대3개)</p>
	                            <input type="text" name="main_y" id="main_y" placeholder="내용을 입력하세요…" value="${pictVO.main_y}">
	                        </div>
	                    </div>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox" style="width:100%">
	                            <p class="inputCaption">소개*</p>
	                            <textarea name="introduce" id="introduce" cols="50" rows="10" class="txt" style="width:100%;">${pictVO.text}</textarea>
                            	<!-- 에디터 설정 -->
								<script type="text/javascript">
									var oEditors = [];
									nhn.husky.EZCreator.createInIFrame({
										oAppRef: oEditors,
										elPlaceHolder: "introduce", //textarea에서 지정한 id와 일치해야 합니다.
										sSkinURI: "/js/SmartEditor2Skin.html",
										fCreator: "createSEditor2"
									});
								</script>
	                        </div>
	                    </div>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">키워드</p>
	                            <input type="text" name="keyword" id="keyword" placeholder="내용을 입력하세요…" value="${pictVO.keyword}">
	                        </div>
	                    </div>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">연락처</p>
	                            <input type="text" name="tel" id="tel" placeholder="내용을 입력하세요…" value="${pictVO.tel}">
	                        </div>
	                    </div>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">영업시간</p>
	                            <input type="text" name="time" id="time" placeholder="내용을 입력하세요…" value="${pictVO.time}">
	                        </div>
	                    </div>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">규모</p>
	                            <input type="text" name="width" id="width" placeholder="내용을 입력하세요…" value="${pictVO.width}">
	                        </div>
	                    </div>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">채광</p>
	                            <input type="text" name="light" id="light" placeholder="내용을 입력하세요…" value="${pictVO.light}">
	                        </div>
	                    </div>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">대관비용</p>
	                            <input type="text" name="fee" id="fee" placeholder="내용을 입력하세요…" value="${pictVO.fee}">
	                        </div>
	                    </div>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">야간 촬영</p>
	                            <input type="text" name="night" id="night" placeholder="내용을 입력하세요…" value="${pictVO.night}">
	                        </div>
	                    </div>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">휴관일 촬영</p>
	                            <input type="text" name="holiyday" id="holiyday" placeholder="내용을 입력하세요…" value="${pictVO.holiyday}">
	                        </div>
	                    </div>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">인원 통제</p>
	                            <input type="text" name="control" id="control" placeholder="내용을 입력하세요…" value="${pictVO.control}">
	                        </div>
	                    </div>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">주소</p>
	                            <input type="text" name="address" id="address" placeholder="내용을 입력하세요…" value="${pictVO.address}">
	                        </div>
	                    </div>
	                    
	                    <!-- 마저 해야함 마크업도? -->
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">주변소음</p>
	                            <div class="inputBoxFlex">
		                            <input type="radio" name="sound" id="sound_1" value="O"><label for="sound_1">O</label>
		                            <input type="radio" name="sound" id="sound_2" value="X"><label for="sound_2">X</label>
                            	</div>
	                        </div>
	                    </div>
	 
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">첨부파일
	                                <label for="attach_file">파일추가</label>
	                                <input type="file" id="attach_file" name="attach_file" multiple style="display: none;">
	                            </p>
	                            <div class="fileList">
	                                <p></p>
	                                <button><img src="/img/admin/close2.png" alt=""></button>
	                            </div>
	                            <p class="fileCaption">첨부 파일은 각 10MB 이하의 파일만 가능합니다.</p>
	                        </div>
	                    </div>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">첨부파일
	                                <label for="attach_file1">파일추가</label>
	                                <input type="file" id="attach_file1" name="attach_file1" multiple style="display: none;">
	                            </p>
	                            <div class="fileList">
	                                <p></p>
	                                <button><img src="/img/admin/close2.png" alt=""></button>
	                            </div>
	                            <p class="fileCaption">첨부 파일은 각 10MB 이하의 파일만 가능합니다.</p>
	                        </div>
	                    </div>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">첨부파일
	                                <label for="attach_file2">파일추가</label>
	                                <input type="file" id="attach_file2" name="attach_file2" multiple style="display: none;">
	                            </p>
	                            <div class="fileList">
	                                <p></p>
	                                <button><img src="/img/admin/close2.png" alt=""></button>
	                            </div>
	                            <p class="fileCaption">첨부 파일은 각 10MB 이하의 파일만 가능합니다.</p>
	                        </div>
	                    </div>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">첨부파일
	                                <label for="attach_file3">파일추가</label>
	                                <input type="file" id="attach_file3" name="attach_file3" multiple style="display: none;">
	                            </p>
	                            <div class="fileList">
	                                <p></p>
	                                <button><img src="/img/admin/close2.png" alt=""></button>
	                            </div>
	                            <p class="fileCaption">첨부 파일은 각 10MB 이하의 파일만 가능합니다.</p>
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
	    
		    $(document).ready(function() {
		        // 첨부파일 관련 코드
		        var fileInputs = ['attach_file', 'attach_file1', 'attach_file2', 'attach_file3'];
	
		        $.each(fileInputs, function(index, inputId) {
		            var $fileInput = $('#' + inputId);
		            var $fileList = $fileInput.closest('.inputBox').find('.fileList');
		            var $fileName = $fileList.find('p');
		            var $deleteButton = $fileList.find('button');
	
		            $fileInput.on('change', function() {
		                if (this.files.length > 0) {
		                    var fileName = this.files[0].name;
		                    $fileName.text(fileName);
		                    $fileList.css('display', 'flex');
		                }
		            });
	
		            $deleteButton.on('click', function(e) {
		                e.preventDefault();
		                $fileName.text('');
		                $fileInput.val('');
		                $fileList.hide();
		            });
	
		            // 초기 상태에서 fileList 숨김
		            $fileList.hide();
		        });
		    });
	
		    function button1_click() {
		        var title = $('#title').val();
		        
		        if (title == "" || title == undefined) {
		            window.alert("제목을 입력해주세요.");
		            $('#title').focus();
		            return false;
		        }
	
		        var saveType = $('#saveType').val();
		        var text = saveType === 'update' ? "수정하시겠습니까?" : "등록하시겠습니까?";
		        
		        oEditors[0].exec("UPDATE_CONTENTS_FIELD", []);
		        if (confirm(text)) {
		            $("#register").attr("action", "/location/location_save.do");
		            $("#register").submit();
		        }
		    }
		</script>
	</body>
	
</html>