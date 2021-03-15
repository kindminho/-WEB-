<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix = "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    <link rel="stylesheet" href="/CSS/logstyle.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container">
    <a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding w3-hover-grey" title="close menu">
      <i class="fa fa-remove"></i>
    </a>
    <a href="/"><img src="/img/humanbook.jpg" style="width:80%; margin-left: 10%;" class="w3-round"></a><br>


    <br>
    <c:set value="${sess_name}" var="sessName" />
    <c:if test="${sessName == NULL}">
	
	<c:if test="${sessName == NULL}"> 
		<span id="login" onclick="document.getElementById('modal').style.display = 'block'">
			<a href="#" style="">LogIn</a>
		</span>   
	</c:if>
	
  	<span id="member"><a href="/member/memRegForm" style="margin-left: 10%;">회원가입</a></span>
  	<br>
  	</c:if>
  	
    <c:if test="${sessName != NULL}">
	     <span style= "color:black; margin-left: 20%";>${sess_name}님 반갑습니다.</span><br><br>  
	     <span id="logout" onclick="loginbox()">
	     <a id="logoutstyle" href="/member/logout" style="margin-left: 35%;">로그아웃</a>
	     </span>
  	</c:if>
  	
    <p class="w3-text-grey"></p>
  </div>
  <div class="w3-bar-block">
    <a href="/member/humanbook_chat" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal"><i class="fa fa-th-large fa-fw w3-margin-right"></i>취업 채팅방</a> 
    <a href="/member/myPage" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-user fa-fw w3-margin-right"></i>My 메뉴</a>
<%--     <a href="<%=ROOT %>/notice/noticeList.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="material-icons w3-margin-right" style='vertical-align:middle'>notifications</i>공지사항</a> --%>
    <a href="/board/list" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-pencil-square-o w3-margin-right" style='vertical-align:middle'></i>게시판</a>
<%--         <% if(iscompany) { %> --%>
    <a href="confModify.me" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-envelope fa-fw w3-margin-right"></i>자격 확인</a>
<%--     	<% } else {%> --%>
    <a href="confReg.me" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-envelope fa-fw w3-margin-right"></i>자격 등록</a>
<%--  		 <% }%> --%>
  </div>
<%--   	<% } else {%> --%>
<%--      <% }%> --%>
     
  <div class="w3-panel w3-large">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
</nav>