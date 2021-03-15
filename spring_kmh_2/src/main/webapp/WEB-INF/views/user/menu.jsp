<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<div class="topnav">  
	<a href="/">Home</a>
	<a href="/board/list">Board</a>
	<a href="#">About</a>
	<a href="#">News</a>
	<a href="#">Gallery</a>

	<c:set value="${sess_name}" var="sessName" />
	<c:if test="${sessName != NULL}">	
		<span style="color:#fff;">${sessName}님 반갑습니다.</span>
		<a href="/member/myPage" style="background-color: #4caf50">마이페이지</a>		
		<span id="logOut">			
			<a href="/member/logout" style="background-color: #4caf50">LogOut</a>
		</span>
	</c:if>	
	 
	<c:if test="${sessName == NULL}"> 
		<span id="login" onclick="document.getElementById('modal').style.display = 'block'">
			<a href="#" style="background-color: #4caf50">LogIn</a>
		</span>   
	</c:if>
	
	  
</div>