
<%@page import="kr.ac.sungkyul.guestbook.dao.GuestBookDao"%>
<%@page import="kr.ac.sungkyul.guestbook.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    	request.setCharacterEncoding("utf-8");
    	String name =request.getParameter("name");
    	String passWord = request.getParameter("pass");
    	String content = request.getParameter("content");
    	
    	GuestBookVo vo = new GuestBookVo();
    	vo.setName(name);
    	vo.setPassWord(passWord);
    	vo.setContent(content);
    	
    	GuestBookDao dao = new GuestBookDao();
    	boolean result = dao.insert(vo);
    	
    	response.sendRedirect("/guestbook/index.jsp");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 
		if(result== true){
	%>
	<h1>성공 했습니다</h1>
	<%
		}else{
	%>
	<h1>실패 했습니다</h1>
	<%
		}
	%>
</body>
</html>