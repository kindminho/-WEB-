<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    

<!DOCTYPE html>
<html>
<title>HumanBook</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="js/exam.js"></script>
<script src="js/formCheck.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway"> -->


<%@ include file="common_header_last.jsp"%>
<link rel="stylesheet" href="<%=ROOT %>/CSS/w3.css">
<%-- <link rel="stylesheet" href="<%=ROOT %>/CSS /memForm.css"> --%>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<body class="w3-light-grey w3-content" style="max-width:1600px">

<!-- 이미지: width: 50%, height: auto -->
<!-- Sidebar/menu -->
<%@ include file="humanbook_slide.jsp" %>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">

  <!-- Header -->
<%@ include file="humanbook_header.jsp" %>

      <div class="w3-section w3-bottombar w3-padding-16">
<!--       <span class="w3-margin-right">필터:</span>  -->
<!--       <button class="w3-button w3-black">모든 채팅방</button> -->
<!--       <button class="w3-button w3-white"><i class="far fa-building w3-margin-right "></i>회사별</button> -->
<!--       <button class="w3-button w3-white w3-hide-small"><i class="fa fa-photo w3-margin-right"></i>분야별</button> -->
<!--       <button class="w3-button w3-white w3-hide-small"><i class="fa fa-map-pin w3-margin-right"></i>카테고리별</button> -->
<!--       <button class="w3-button w3-white w3-hide-small"><i class='fab fa-sistrix w3-margin-right'></i>회사 검색</button> -->
    </div>

  <!-- First Photo Grid-->
  <div class="w3-row-padding">
  
<%--      <%@ include file="/humanbook_jsp/humanbook_chat_main.jsp" %> --%>
<!--     <div class="w3-third w3-container w3-margin-bottom"> -->
     <img src="<%=ROOT %>/img/humanbanner.jpg" style="width:70%; height:70%; margin-left:10%;"  class="w3-hover-opacity">
     
<!--     </div> -->
  </div>
  
  <!-- Second Photo Grid-->
  <div class="w3-row-padding">
   
    <div class="w3-third w3-container w3-margin-bottom">

    </div>

  </div>

<!--   Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
      <a href="#" class="w3-bar-item w3-black w3-button">1</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
    </div>
  </div>


  <!-- Footer -->
 <%@ include file="humanbook_footer.jsp"%>
  </div>
  
  <!-- Contact Section -->

<!-- End page content -->
</div>

<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>

<c:out value="${isMemRegSuccess}" />

<input type="hidden" name="resMsg" value="<%=request.getAttribute("isMemRegSuccess")%>" id="resMsg">
<input type="hidden" id="LoginRes" value="<c:out value="${loginStat}"/>">

<script>
window.onload = function() {
	if(document.getElementById("resMsg").value == 1){
		alert("회원등록 완료");
	document.getElementById("modal").style.display = "block";
	}
	
	if(document.getElementById("LoginRes").value == "loginfail"){
		document.getElementById("modal").style.display = "block";
		document.getElementById("msg").innerHTML = "아이디가 없습니다.";
		document.forms["login"]["pw"].focus();	
	}
}
</script>

<!-- modal -->
<%@ include file="humanbook_modal.jsp"%>

</body>
</html>
