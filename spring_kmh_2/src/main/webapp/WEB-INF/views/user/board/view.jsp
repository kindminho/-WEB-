<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>        
    
<!DOCTYPE html>
<html>
<title>게시글 확인</title>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="/js/exam.js"></script>

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>


<%@ include file="../common_header_last.jsp"%>

<script>
function checkYesNo(){
	if(confirm("정말로 삭제 하시겠습니까?")){
		return true;	
	} else {
		return false;
	}
}

</script>

<link rel="stylesheet" href="../css/w3.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<body class="w3-light-grey w3-content" style="max-width:1600px">

<!-- 이미지: width: 50%, height: auto -->
<!-- Sidebar/menu -->
<%@ include file="../humanbook_slide.jsp" %>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">

  <!-- Header -->
<%@ include file="../humanbook_header.jsp" %>
    <div class="w3-section w3-bottombar w3-padding-16">
    </div>
  
  

  <!-- First Photo Grid-->
  <div class="w3-row-padding">
<!--     <div class="w3-third w3-container w3-margin-bottom"> -->
       	<h1><i class="fa fa-pencil-square-o w3-margin-right" style='vertical-align:middle; font-size: 50px;'></i>게시판 세부 내용</h1>
	
		<hr>
		<div style="margin-top:20px">
				
	<table>		
			<c:set value="${board}" var="dto" />	
				<thead>	
					<tr>
						<td style="text-align:left">${dto.title}</td>
						<td style="text-align:right">조회수 : ${dto.count}</td>
					</tr>
					<tr>
						<td style="text-align:left">작성자 : ${dto.id}</td>
						<td style="text-align:right">${dto.wdate}</td>
					</tr>
					<tr style="height:300px; vertical-align: top; background-color: #f5f5f5">
						<td colspan="2" style="text-align:left; padding-top:20px;">
						${dto.content}
						</td>
					</tr>
					<c:if test="${dto.upfile.fileName != null }">
					<tr>
					<c:set value="${ dto.upfile.fileType}" var="ftype" />
					<c:set value="${fn:substring(ftype, 0,fn:indexOf(ftype,'/') ) }" var="type"/>
					
						<td colspan="2" style="text-align:left"> 첨부파일 : 	
						
							<form name="filedown" method="post" action="fileDown.do">		
								<input type="hidden" name="filename" value="smile.jpg">
								<input type="hidden" name="savefilename" value="smile_e24c01bd-4cf4-4d6f-88f2-2e74aef22d65.jpg">
								<input type="hidden" name="filesize" value="25319">
								<input type="hidden" name="filepath" value="/upload/">	
								<input type="hidden" name="filetype" value="image/jpeg">
								
								<c:if test="${ type eq 'image'}">
									<img width="100px" height="100px" src="/upload/${dto.upfile.saveFileName }" />
								</c:if>
								${dto.upfile.fileName } (사이즈: ${dto.upfile.fileSize }) 	
								
								<input type="submit" value="다운로드" >								
							</form>
							
							
						</td>
					</tr>
					</c:if>						
				</thead>				
			</table>
	

			<c:if test="${board.boardVo.member_id == sess_id }">
			<form name="boardModifyBtn" method="POST" action="/board/modifyForm">				
				<input type="hidden" name="bno" value="${board.boardVo.board_no}">
				<input type="hidden" name="title" value="${board.boardVo.title}">
				<input type="hidden" name="content" value="${board.boardVo.content}">
				<input type="hidden" name="count" value="${board.boardVo.cnt}">
				<input type="hidden" name="wdate" value="${board.boardVo.wdate}">
				<input type="hidden" name="writer" value="${board.boardVo.member_id}">
				
				<input type="hidden" name="fileNo" value="${board.fileVo.file_no}">
				<input type="hidden" name="saveFileName" value="${board.fileVo.saveFileName }">
				<input type="hidden" name="fileName" value="${board.fileVo.fileName}">
				<input type="hidden" name="fileSize" value="${board.fileVo.fileSize}">
				<input type="hidden" name="fileType" value="${board.fileVo.fileType}">
				
				<input type="submit" value="수정">
			</form>
			<form name="boardDelBtn" method="POST" action="/board/delete" onsubmit="return checkYesNo()">
				<input type="hidden" name="bno" value="${board.boardVo.member_id}">
				<input type="hidden" name="saveFileName" value="${file.saveFileName}">
				<input type="submit" value="삭제">
			</form>				
			</c:if>


<!-- End page content -->
			</div>

	</div>
  <!-- Footer -->
 <%@ include file="../humanbook_footer.jsp"%>
</div>

<!-- modal -->
<%@ include file="../humanbook_modal.jsp"%>

</body>
</html>
