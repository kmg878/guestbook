
<%@page import="kr.ac.sungkyul.guestbook.dao.GuestBookDao"%>
<%@page import="kr.ac.sungkyul.guestbook.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    
    	request.setCharacterEncoding("utf-8");
    	String passWord = request.getParameter("password");
    	String no = request.getParameter("no");
    	
    	GuestBookVo vo = new GuestBookVo();
    	vo.setNo(Long.parseLong(no));
    	vo.setPassWord(passWord);
    	
    	
    	GuestBookDao dao = new GuestBookDao();
    	int result = dao.delete(vo);
    	
    	response.sendRedirect("/guestbook/index.jsp");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>