package web.jsp0208.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginProController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("loginPro Controller!");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println(id + " " + pw);
		
		boolean result = true;
		request.setAttribute("result", result);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp0208/loginPro.jsp");
		rd.forward(request, response);
		
	}
}
