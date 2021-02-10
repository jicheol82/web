package web.jsp0208.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("loginForm Controller!");
		// 단순히 페이지만 보여주므로
		RequestDispatcher rd = request.getRequestDispatcher("/jsp0208/loginForm.jsp");
		rd.forward(request, response);
	
	}
}
