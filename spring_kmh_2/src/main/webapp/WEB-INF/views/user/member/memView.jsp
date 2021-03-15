<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

 

<!DOCTYPE html>
<html>
<title>회원정보</title>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/w3.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<body class="w3-light-grey w3-content" style="max-width:1600px">

<%@ include file="../humanbook_header.jsp" %>

<!-- 이미지: width: 50%, height: auto -->
<!-- Sidebar/menu -->
<%@ include file="../humanbook_slide.jsp" %>


<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">

    <div class="w3-section w3-bottombar w3-padding-16"></div>
    
    
    <!-- First Photo Grid-->
    <div class="w3-row-padding">
    	<div class="w3-third w3-container w3-margin-bottom">
    
	    <h1><i class='far fa-address-card' style='font-size:50px'></i>                 회원 정보</h1>	
	    
	    <hr> 
	    <div style="margin-top:20px;">

			<label>아이디</label><br>
			${member.id}
			<br><br>
						
			<label>이름</label><br>
			${member.name} 
			( 
			  <c:choose>
			  	<c:when test="${member.gender eq 'M' }">
			  	남자
			  	</c:when>
			  	
			  	<c:when test="${member.gender eq 'F' }">
			  	여자
			  	</c:when>
			  	
			  	<c:otherwise>
			  	사람이 아닙니다.
			  	</c:otherwise>
			  				  
			  </c:choose>				
			 )
			<br><br>
					
			<label>이메일</label><br>
			${member.email}	
			<br><br>					
			
			<fieldset style="width:500px;">			
			<legend>관심 분야</legend>				
				<c:forEach var="h" items="${hobby }" >
					<c:forEach var="myhobby" items="${member.hobby}">
						<c:if test="${myhobby == h.codeVal }"> ${h.codeName} </c:if>
					</c:forEach>																			
				</c:forEach>						
			</fieldset>			
			<br><br> 
			
			<label>주소</label><br>
			(${member.post})<br>
			${member.addr1} ${member.addr2 } ${member.addr3 }
			<br><br>
			
			<label>자기소개</label><br>
			${member.intro }
			<br>
		 		 	
		 	
		</div>    
	</div>
	</div>


<!-- End page content -->
  <!-- Footer -->
<%@ include file="../humanbook_footer.jsp" %>
</div>

<!-- modal -->
<%@ include file="../humanbook_modal.jsp"%>

</body>
</html>