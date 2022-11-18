package test.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/friend/list")
public class FriendListServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	List<String> list=new ArrayList<>();
	list.add("김구라");
	list.add("해골");
	list.add("원숭이");
	
	req.setAttribute("list", list);
	
	RequestDispatcher rd=req.getRequestDispatcher("/WEB-INF/views/friend/list.jsp");
	rd.forward(req, resp);
	}
}