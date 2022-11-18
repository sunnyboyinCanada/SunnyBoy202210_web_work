<%@page import="test.todo.dao.TodoDao" %>
<%@page import="test.todo.dto.TodoDto" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<TodoDto> list=TodoDao.getInstance().getList();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>할일 목록입니다.</title>
</head>
<body>
	<div class = "container">
		<a href="insertform.jsp">할일 추가</a>
		<h1>할일 목록 입니다.</h1>
		<table>
			<thread>
			<tr>
				<th>번호</th>
				<th>내용</th>
				<th>등록일</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			</thread>
			<tbody>
			<%for(TodoDto tmp:list){%>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getContent() %></td>
					<td><%=tmp.getRegdate() %></td>
					<td><a href="updateform.jsp?num=<%=tmp.getNum()%>"></a></td>
				</tr>
			<%} %>
			</tbody>
		</table>
	</div>
</body>
</html>