<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
   


<!DOCTYPE html>
<html>
<title>HumanBook</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="/js/exam.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src="/js/formCheck.js"></script>


<%-- <%@ include file="/common_header_last.jsp"%> --%>
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
       	<h1><i class="fa fa-pencil-square-o w3-margin-right" style='vertical-align:middle; font-size: 50px;'></i>게시판 		
	    	<c:if test="${sess_name != null }" >
	    	<button class="blue" onclick="location.href='/board/regForm'">등록</button>
	    	</c:if>
	    	</h1>
		<div style="margin-top:20px">
		

			<table>
				<thead> 
					<tr>
						<th>순번</th>
						<th>제목</th>
						<th>조회수</th>
						<th>작성일</th>
						<th>작성자</th>
					</tr>
				</thead>
				<tbody>

				
		    	<c:forEach items="${board}"  var="dto">		    	
		    		<tr onclick="location.href='/board/view?bno=${dto.board_no}'">
		    			<td>${dto.rownum}</td>
		    			<td style="text-align: left">${dto.title}</td>
		    			<td>${dto.cnt}</td>
		    			<td>${dto.wdate}</td>
		    			<td>${dto.member_id}</td>
		    		</tr>
		    	</c:forEach>
				</tbody>													
			</table>
		</div>

  </div>
<!-- End page content -->
  <!-- Footer -->
 <%@ include file="../humanbook_footer.jsp" %>
</div>


<!-- modal -->
<%@ include file="../humanbook_modal.jsp" %>


	<div>
		<input type ="hidden" name ="delresult" value="${delstat}" id="delresult"/>
	</div>


	<script>
		window.onload = function() {
			if(document.getElementById("delresult").value ==1) {
				alert("데이터 삭제 완료");
			}
		}
	
	</script>

</body>
</html>
