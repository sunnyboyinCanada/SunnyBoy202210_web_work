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
<title>/member/delete.jsp</title>
</head>
<body>
	 <div class="container">
      <p>
         <strong><%=num %></strong> 번 회원을 삭제 했습니다.
         <a href="list.jsp">확인</a>
      </p>
   </div>
</body>
</html>