package web.jsp0209.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainBean implements SuperBean {
	public String actionBean(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		return "/jsp0210/main.jsp";
	}
}
