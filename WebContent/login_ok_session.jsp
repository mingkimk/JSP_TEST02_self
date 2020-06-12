<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	String nowid = (String)session.getAttribute("id"); //세션의 영역에서 아이디를 가져와라  (브라우저에 있는 세션에서  아이디를 가져와라)
	String nowname = (String)session.getAttribute("name");
	String nowphone = (String)session.getAttribute("phone");

String id_str = session.getId();
		long lasttime = session.getLastAccessedTime();
		long createdtime = session.getCreationTime();
		long time_used = (lasttime - createdtime) / 60000;
		int inactive = session.getMaxInactiveInterval() / 60;
		boolean b_new = session.isNew();

	if(nowid==null){
		response.sendRedirect("login_form_session.jsp");
	}else{
		out.print("id: "+nowid+"<br>");
		out.print("이름: "+nowname+"<br>");
		out.print("전화번호: "+nowphone+"<br>");
		out.print("세션 id: "+session.getId()+"<br>");
		out.print("세션 유효시간: "+inactive+"<br>");
		out.print("<br> <a href='login_session_del.jsp'> 세션삭제 </a><br>");
	}	
	// 모든 세션 가져오기


		
	%>


 
</body>
</html>