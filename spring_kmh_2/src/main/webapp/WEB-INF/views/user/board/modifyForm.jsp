<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/layout2_css.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/js/formCheck.js"></script>
</head>
<body>

<%@ include file="../header.jsp" %>

<%@ include file="../menu.jsp" %>

<div class="content" style="width:100%; padding:100px;">
  <div class="main">  
	<div class="card">
	    <h2>■ 게시판 수정</h2>	
	    <hr> 
	    <div style="margin-top:50px;">
	    
<%-- 	    <c:set value="${board}" var="dto" /> --%>
		<form name="board" method="post" enctype="multipart/form-data" action="/board/modify">		
			<input type="text" name="bno" value="${board.bno}">		
			<input type="hidden" name="count" value="${board.count}">
			<input type="hidden" name="wdate" value="${board.wdate}">
			<input type="hidden" name="writer" value="${board.id}">
			
				  
			<input type="text" name="title" placeholder="제목" maxlength= "255" style="width:500px" required
			  value="${board.title}">	
		 	<textarea name="content" placeholder="내용">${board.content}</textarea>
		 	
		 	<c:choose>
		 		<c:when test="${!empty uploadFile.fileName}">
				 	<c:set value="${uploadFile.fileType}" var="ftype" />
					<c:set value="${fn:substring(ftype, 0,fn:indexOf(ftype,'/') ) }" var="type"/>
						
					<div id="file">		
					<c:if test="${ type eq 'image'}">							 						 			
						<img width="100px" height="100px" src="/upload/${uploadFile.saveFileName }" />
					</c:if>	
					${uploadFile.fileName } (사이즈: ${uploadFile.fileSize }) 	
			 		<input type="button" value="삭제" onclick="fileDelete('${board.bno}','${uploadFile.saveFileName }')">					 				 				 	
					</div>	
		 		</c:when>
		 		<c:when test="${empty uploadFile.fileName}">
		 			<input type="file" name="files"><br>
		 		</c:when>
		 	</c:choose>	
		 	<input type="submit" value="수정">		 			 
		</form>
		</div>    
	</div>	
  </div>	
</div>


<%@ include file="../footer.jsp" %>

<script>
function fileDelete(bno, savefilename) {
		
	var x = new XMLHttpRequest();
	
	x.onreadystatechange = function() {
		
		if(x.readyState === 4) {
			
			if(x.status === 200){
				
				var tag = document.getElementById("file");			
				
				if(x.responseText.trim()  ===  "0"){
					alert("파일 삭제 실패 하였습니다.");					
				} else {					
					alert("파일 삭제 하였습니다.");
					tag.innerHTML = "<input type='file' name='files'>";
				}
				
			} else {				
				console.log('에러코드 : ' + x.status);
			}
			
		}
	};
	
	x.open("POST", "/deleteFile", true);
	x.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	x.send("bno=" + bno + "&saveFilename=" + savefilename);	
}
</script>

</body>
</html>