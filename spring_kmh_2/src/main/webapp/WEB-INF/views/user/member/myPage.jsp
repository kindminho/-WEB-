<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
    
<!DOCTYPE html>
<html>
<title>HumanBook</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/js/formCheck.js"></script>
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
<div class="w3-third w3-container w3-margin-bottom">
       	<h1><i class='far fa-address-card' style='font-size:50px'></i>                 마이 페이지</h1>	
	   
	    <hr> 
	    <div style="margin-top:20px;">	  

		<form name="memReg" method="post" action="/member/modify" onsubmit="return memberFormCheck()">					  
			<input type="hidden" name="id" value="${member.id}" >			
			<label>아이디</label>
			${member.id}
			<br>
						
			<input type="password" name="pw" maxlength="15" placeholder="패스워드">
			* 최소 5자리 ~ 15자리<p id="pw_error" style="color:red"></p>
			<br>
					
			<input type="text" name="name" placeholder="이름" value="${member.name}" required><br>
			
			<input type="text" name="eid" value="${fn:substring(member.email, 0, fn:indexOf(member.email, '@'))}" placeholder="이메일id">@
			<input type="text" name="domain" value="${fn:substring(member.email, fn:indexOf(member.email, '@')+1, fn:length(member.email))}" placeholder="도메인">
			<select name="sel_domain" style="background-color:#f1f1f1" 
			        onchange="inputDomain()">
				<option value="">직접입력</option>
				<option value="naver.com">naver.com</option>
				<option value="hanmail.net">hanmail.net</option>
				<option value="gmail.com">gmail.com</option>
			</select>
			<p id="eid_error" style="color:red"></p>
			<br>
			
			<fieldset style="width:200px;">
			<legend>성별</legend>
				<input type="radio" name="gender" value="M" 
 				   <c:if test="${member.gender == 'M'}"> checked </c:if> >남자 
				<input type="radio" name="gender" value="F"
				   <c:if test="${member.gender == 'F'}"> checked </c:if> >여자
			</fieldset>
			<p id="gender_error" style="color:red"></p>
			<br>
			
			<fieldset style="width:300px;">			
			<legend>관심 분야</legend>
				<c:forEach var="h" items="${hobby }" >
					<input type="checkbox" name="hobby" value="${h.codeVal}" 
					
						<c:forEach var="myhobby" items="${member.hobby}">
							<c:if test="${myhobby == h.codeVal }"> checked </c:if>
						</c:forEach>							
					>${h.codeName}													
				</c:forEach>
			</fieldset>
			
			<p id="hobby_error" style="color:red"></p>
			<br> 
			
			<script src="/js/search_address.js"></script>
			<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			<input type="text" name="post" size="5" id="postcode" value="${member.post}" readonly>
			<input type="button" onclick="search_address()" value="우편번호 찾기"><br>
			<input type="text" name="addr1"  value="${member.addr1}" placeholder="주소" id="address" readonly><br>
			<input type="text" name="addr2"  value="${member.addr2}" placeholder="상세주소입력" id="detailAddress">
			<input type="text" name="addr3"  value="${member.addr3}" placeholder="참고항목" id="extraAddress" readonly>			
			<br>
			
			<textarea name="intro" placeholder="자기소개(100글자이내)">
			${member.intro }
			</textarea><br>
		 
		 	<input type="submit" value="수정">
		 	<input type="button" value="회원탈퇴" style="float:right" onclick="location.href='/member/goOut'">
		 
		</form>
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