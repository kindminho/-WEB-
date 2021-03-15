<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<%-- <%@ include file="/common_header_last.jsp"%> --%>
    
    
 <link rel="stylesheet" href="/CSS/w3.css">
<%-- <link rel="stylesheet" href="<%=ROOT %>/CSS /memForm.css"> --%>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<body class="w3-light-grey w3-content" style="max-width:1600px">
      
<!-- 이미지: width: 50%, height: auto -->
<!-- Sidebar/menu -->
<%@ include file="../humanbook_slide.jsp" %>
   
   <!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">
   
     <!-- Header -->
<%@ include file="../humanbook_header.jsp" %>
      
      <div class="w3-section w3-bottombar w3-padding-16">
      <span class="w3-margin-right">필터:</span> 
      <button class="w3-button w3-black">모든 채팅방</button>
      <button class="w3-button w3-white"><i class="far fa-building w3-margin-right "></i>회사별</button>
      <button class="w3-button w3-white w3-hide-small"><i class="fa fa-photo w3-margin-right"></i>분야별</button>
      <button class="w3-button w3-white w3-hide-small"><i class="fa fa-map-pin w3-margin-right"></i>카테고리별</button>
      <button class="w3-button w3-white w3-hide-small"><i class='fab fa-sistrix w3-margin-right'></i>회사 검색</button>
    </div>

   
  <!-- First Photo Grid-->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="/img/video.png" alt="Norway" style="width:300px; height:200px"class="w3-hover-opacity" >
      <div class="w3-container w3-white">
        <p><b>영상 계열</b></p>
<!--         <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p> -->
      </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="/img/it.jpg" alt="Norway" style="width:300px; height:200px"  class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b>IT 계열</b></p>
<!--         <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p> -->
      </div>
    </div>
    <div class="w3-third w3-container">
      <img src="/img/build.jpg" alt="Norway" style="width:300px; height:200px" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b>건축 계열</b></p>
<!--         <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p> -->
      </div>
    </div>
  </div>
  
  <!-- Second Photo Grid-->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="/img/design.jpg" alt="Norway" style="width:300px; height:200px" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b>디자인 계열</b></p>
<!--         <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p> -->
      </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
      <img src="/img/edu.jpg" alt="Norway" style="width:300px; height:200px" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b>교육 계열</b></p>

      </div>
    </div>
    <div class="w3-third w3-container">
      <img src="/img/hospital.jpg" alt="Norway" style="width:300px; height:200px" class="w3-hover-opacity">
      <div class="w3-container w3-white">
        <p><b>의약 계열</b></p>

      </div>
    </div>
  </div>

  <!-- Pagination -->
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
 <%@ include file="../humanbook_footer.jsp"%>

</div>

<!-- modal -->
<%@ include file="../humanbook_modal.jsp"%>

</body>
    