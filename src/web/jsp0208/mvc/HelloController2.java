package web.jsp0208.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloController2 extends HttpServlet{
	@Override
	public void init() throws ServletException {
		System.out.println("init!!");
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service!");
		request.getRequestDispatcher("/jsp0208/hello.jsp").forward(request, response);
		
	}
}
