package web.test.mvc;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainCtrler extends HttpServlet{
	Map beanMap = new HashMap();
	@Override
	public void init(ServletConfig config) throws ServletException {
		String path = config.getInitParameter("propertiesPath");
		try {
			InputStream is = new FileInputStream(path);
			Properties p = new Properties();
			p.load(is);
			Iterator it = p.keySet().iterator();
			while(it.hasNext()) {
				String key = (String) it.next();
				String value = p.getProperty(key);
				Class c = Class.forName(value);
				Object obj = c.newInstance();
				beanMap.put(key, obj);
			}
		}catch(Exception e) {e.printStackTrace();}
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String view = "/test/erro.jsp"; 
		if(beanMap.get(uri) instanceof SuperBean) {
			view = ((SuperBean)beanMap.get(uri)).actionBean(request, response);
		}
		request.getRequestDispatcher(view).forward(request, response);
	}
}
