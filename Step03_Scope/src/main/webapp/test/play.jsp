<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/play.jsp</title>
</head>
<body>
	<%
		
		String nick=(String)session.getAttribute("nick");
	
	%>
	<h3>노는 페이지 입니다.</h3>
	<%if(nick==null){ %>
		<p>session 영역(scope)에 "nick"이라는 키값으로 저장된 값이 없습니다.</p>
	<%}else{%>
		<p>
			<p><strong><%=nick%></strong> 이라는 닉네임을 기억 하겠습니다.</p>
			
		</p>
</body>
</html>