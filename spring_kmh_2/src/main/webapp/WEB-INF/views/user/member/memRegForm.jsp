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

<!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway"> -->
<!-- <link rel=""> -->

<%@ include file="../common_header_last.jsp"%>
<%-- <link rel="stylesheet" href="<%=ROOT %>/CSS/memForm.css"> --%>
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
    <div class="w3-third w3-container w3-margin-bottom">
       	<h1><i class='far fa-address-card' style='font-size:50px'></i>                 회원가입</h1>
	
		<hr>
		<div style="margin-top:20px">

			<form name = "memReg" method="post" action="/member/register" onsubmit="return memberFormCheck()">

<!-- 				<lable>아이디</lable> -->
				<input type="text" name="id" maxlength ="15" placeholder="아이디" onchange="idCheck('<%=ROOT %>')" id="id_input">

<%-- 				<button onclick="idCheck('<%=ROOT %>')">아이디 중복검사</button> --%>
				<p id="idCheckMsg" style="color:red"></p>
				<input type="hidden" name="isIdCheck" id="isIdCheck">
				<br>
				
<!-- 				<lable>비밀번호</lable> -->
				<input type="password" name="pw" maxlength="15" placeholder="비밀번호"><br>
				<p>* 최소 5자리~15자리</p> <p id="pw_error"></p>
				
<!-- 				<lable>이름</lable> -->
				<input type="text" name="name" placeholder="이름" required><br>
				

				
				<input type="text" name="eid" placeholder="이메일 ID"> @
				<input type="text" name="domain" placeholder="도메인 주소">
				<select name="sel_domain" style="background-color:#f1f1f1" 
						onchange = "inputDomain()">
					<option value="">직접 입력</option>
					<option value="naver.com">naver.com</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="gmail.com">gmail.com</option>
					
				</select>
				<p id="eid_error"></p>
				<br>
				
				<fieldset>
				<legend>성별</legend>
				<input type="radio" name="gender" value="M">남자
				<input type="radio" name="gender" value="F">여자
				<p id="gender_error"></p>
				<br>
				</fieldset><br>
				
				

				<fieldset>
				<legend>관심 분야</legend>
				<input type="checkbox" name="hobby" value="1">영상 계열
				<input type="checkbox" name="hobby" value="2">공학 계열
				<input type="checkbox" name="hobby" value="3">건축 계열
				<p id="hobby_error"></p>
				<br>
				
				</fieldset><br>
				
				<script src="/js/search_address.js"></script>
				<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
				<input type="text" name="postcode" size="5" id="postcode" readonly>
				<input type="button" onclick="search_address()" value ="우편번호 찾기"><br>
				<input type="text" name="addr1" placeholder="주소" id="address" readonly><br>
				<input type="text" name="addr2" placeholder="상세주소 입력" id="detailAddress">
				<input type="text" name="addr3" placeholder="참고항목" id="extraAddress" readonly>
				<br>

				
				<textarea name="intro" placeholder="자기소개 입력(600자 이내)"></textarea><br>

				<input type="submit" value="등록">
				<input type="reset"	value="초기화">
				
			</form>
					
		</div>

    </div>

  </div>
<!-- End page content -->
</div>

  <!-- Footer -->
 <%@ include file="../humanbook_footer.jsp"%>

<!-- modal -->
<%@ include file="../humanbook_modal.jsp"%>

</body>
</html>
