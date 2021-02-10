package web.jsp0208.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 모든 요청은 여기로 온다
		// 어떤 요청인지 uri 분석하여 요청에 따라 올바른 처리하고
		// 요청에 맞는 jsp페이지로 forward하기
		
		// #1. uri 분석하기 우해 request에서 uri꺼내기
		String uri = request.getRequestURI();
		System.out.println("uri = "+uri);
		String view = "";
		// #2. 각 uri요청에 따른 처리
		if(uri.equals("/web/login.global")) {
			// view 이동
			view = "/jsp0208/loginForm.jsp";
		}else if(uri.equals("/web/loginPro.global")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			// 로그인 처리
			boolean result = true;
			request.setAttribute("result", result);
			// view이동
			view = "/jsp0208/loginPro.jsp";
		}
		
		request.getRequestDispatcher(view).forward(request, response);
	}
}
