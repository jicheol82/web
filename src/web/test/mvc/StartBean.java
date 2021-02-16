package web.test.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StartBean implements SuperBean{
	@Override
	public String actionBean(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("StartBean에서 확인 하는 dest :" + request.getParameter("dest"));
		if(request.getParameter("dest").equals("disp")) {
			request.setAttribute("rsVar", "rsVar is alive!");
			request.getRequestDispatcher("/web/test/destination.jsp").forward(request, response);;
		}else if(request.getParameter("dest").equals("redi")) {
			request.setAttribute("rsVar", "rsVar is alive!");
			response.sendRedirect("/web/test/destination.jsp");
		}
		return "/web/test/start.jsp";
	}
}
