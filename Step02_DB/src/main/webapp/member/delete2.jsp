<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
int num= Integer.parseInt(request.getParameter("num"));
//MemberDao.getInstance().delete(num);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/delete2</title>
</head>
<body>
	<script>
		alert("<%=num%> 번 회원을 삭제 했습니다.");
		location.href="${pageContext.request.contextPath }/member/list.jsp"
	</script>
</body>
</html>