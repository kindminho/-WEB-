<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	String ROOT = request.getContextPath();
//     	out.println(ROOT);




//     (String) 문자열로 변환하는 JAVA 명령어

    String sess_name = (String)session.getAttribute("sess_name");
	boolean islogin = false;
    if(sess_name != null) {
    	islogin = true;
    }
 
    String sess_iscompany = (String)session.getAttribute("sess_iscompany");
	boolean iscompany = false;
    if(sess_iscompany != null) {
    	iscompany = true;
    }

    %>
    <link rel="stylesheet" href="<%=ROOT %>/CSS/w3.css">
    <link rel="stylesheet" href="<%=ROOT %>/CSS/humanbook_style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">