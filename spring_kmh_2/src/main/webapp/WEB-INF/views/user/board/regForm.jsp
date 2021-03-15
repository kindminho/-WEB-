<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>HumanBook</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="/js/exam.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src="/js/formCheck.js"></script>


<%@ include file="../common_header_last.jsp"%>

<%-- <link rel="stylesheet" href="<%=ROOT %>/CSS/memForm.css"> --%>
<link rel="stylesheet" href="/css/w3.css">
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
       	<h1><i class="fa fa-pencil-square-o w3-margin-right" style='vertical-align:middle; font-size: 50px;'></i>게시판 등록</h1>
	
		<hr>
		<div style="margin-top:20px">

			<form name = "board" method="post" enctype ="multipart/form-data" action="/board/register">

				<input type="text" name="title" placeholder="제목" maxlength= "255" style="width:500px;" required><br>
				<textarea name="content" placeholder="내용"  style="width:500px; height:300px"></textarea><br>
				<input type="file" name="filename1">
				<input type="submit" value="등록">
			</form>
		</div>

  </div>
<!-- End page content -->
  <!-- Footer -->
 <%@ include file="../humanbook_footer.jsp"%>
</div>


<!-- modal -->
<%@ include file="../humanbook_modal.jsp"%>

</body>
</html>
