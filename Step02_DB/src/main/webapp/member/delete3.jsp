<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
int num= Integer.parseInt(request.getParameter("num"));
//MemberDao.getInstance().delete(num);

String cPath = request.getContextPath();
response.sendRedirect(cPath+"/member/list.jsp");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/delete3.jsp</title>
</head>
<body>
	<script>
		location.href="/Step02_DB/member/list.jsp";
	</script>
</body>
</html>