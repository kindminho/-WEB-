<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="modal" id="modal">
	<div class="pop_layer">
	  <div class="pop_header">
		  <div class="pop_title">로그인</div>
		  <div class="pop_close" onclick="document.getElementById('modal').style.display = 'none'">
		  	<a href="#">close</a>
		  </div>		  
	  </div>  
	  
	  <form name="login" method="post" action="/member/login" onsubmit="return loginFormCheck()">
	  <div class="pop_content">
	    <input type="text" name="id" placeholder="아이디"  maxlength="15"
 	           value="<% if(request.getParameter("id") != null)  
 	        	            out.print(request.getParameter("id")); 
 	        	       %>"  
	        	        required >     
	    <input type="password" name="pw" placeholder="비밀번호"  maxlength="15" required>
	    <p class="msg" id="msg"></p>
	    <input type="submit" value="로그인" class="login_btn">	   	    	    
	  	<a href="member/memRegForm">[회원가입]</a>		 	 				    		    	    	
	  </div>
	  </form>	  	 
	</div>
</div>