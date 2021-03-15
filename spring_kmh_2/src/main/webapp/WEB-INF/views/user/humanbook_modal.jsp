<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


        
<div class = "modal" id="modal">
	<div class="pop_header">
 		 	<div class="pop_Layer">
 		 			<div class="pop_title"></div>
 		 			<div class="pop_close" onclick="loginbox_out()">
 		 			<a id="close_btn" href="#" ><i class='fas fa-times' style="font-size:27px; margin-left:40px" ></i></a></div>
 		 			 <div class="pop_content">
 						
 						<form name="login" method="post" action="/member/login" onsubmit="return loginFormCheck()">
 						
 						<img class="opac" src="/img/humanbook.jpg" width="45%" height="20%">
 						<br>
 						
 						<div id="login_content1" style='float: center;'>
 							<input type="text" name="id" placeholder="아이디" size="20"
 							 maxlength="15" 
 							 value="<% if(request.getParameter("id") != null)
 										 out.print(request.getParameter("id"));
 										%>" 
 										required><br>
 							<input type="password" name="pw" placeholder="비밀번호" size="20" maxlength="15" required><br>
						</div>
						
						<div id="login_content2">
 							<input type="submit" value="로그인" class="login_btn">
						</div>
						<br>
						<br>
 	
 							<p class="msg" id="msg"></p>
 							
 							<a href="member/memRegForm">[회원가입]</a>
 							


 						</form>

 					</div>
 		 	</div>
 		 </div>
 </div>