package web.jsp0209.mvc;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 통합 컨트롤러 .do는 모든 요청이 이곳으로 온다
//@WebServlet(urlPatterns="*.do", initParams=@WebInitParam(name="propertiesPath", value="E:\\CJC\\jsp\\jspworkspace\\web\\WebContent\\WEB-INF\\properties\\memberTest.properties"))	// 어노테이션으로 경로 지정
public class MemberTestCtrler extends HttpServlet {
	// uri=Bean객체 형태의 데이터를 beansMap에 차곡차곡 저장시키기.
	private Map beansMap = new HashMap();
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// initParams로 보내온 파라미터는 config가 받고,
		// config를 통해 getInitParameter("파라미터명") 메소드를 이용하여
		// properties 파일의 실제 경로를 담는다.

		// initParams에 있는 파리미터(properties 파일 경로) 가져오기
		String path = config.getInitParameter("propertiesPath");

		//properties 파일 로드 시키기 (자바로 사용할 수 있게 변환)
		Properties p = null;	// Properties 클래스로 properties파일 로드시키기 위해 사용
		InputStream is = null;	// 실제 외부 파일을 가져오기 위한 통로로 사용
		try {
			is = new FileInputStream(path);	//경로주고 스트림객체 생성
			p = new Properties();
			p.load(is);	//  properties 파일 로딩시키기(내용을 전부 map type으로 가져오기)
			// 반복자 가져오기
			// keySet() 키들만 가져오기 -> iterator() 키들만 정렬해서 반복자 만들기
			Iterator it = p.keySet().iterator();
			while(it.hasNext()) {
				String key = (String)it.next();	// 키 꺼내기 (url)
				String value = p.getProperty(key);	// 키로 밸류꺼내기 (bean클래스 문자열)
				// uri경로=key, Bean 클래스 객체=value
				Class c = Class.forName(value);	// value에 들어있는 문자열에 해당하는 클래스 찾기
				Object obj = c.newInstance();	// c로 실제 클래스 객체 생성
				beansMap.put(key, obj);	// map에 저장
			}
		}catch(Exception e) {e.printStackTrace();}
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println("uri :"+uri);
		// 요청에 해당하는 Bean클래스 꺼내기
		Object obj = beansMap.get(uri);	// 요청 경로 자체가 beansMap 키로 사용
		// obj에 담긴 꺼내진 객체가 어떤타입인지 모르니
		SuperBean sb = null;
		String view ="/jsp0210/main.jsp";
		if(obj instanceof SuperBean) {
			sb = (SuperBean)obj;
			view = sb.actionBean(request, response);
			System.out.println(view);
		}
		// 해당 bean클래스의 actionBean() 호출
		// view로 이동
		request.getRequestDispatcher(view).forward(request, response);
	}
}
/*
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// get방식 요청 처리 내용 작성
	System.out.println("get!!");
	
	// 서블릿 방식으로 웹페이지 작성
	PrintWriter pw = response.getWriter();
	pw.println("<html>");
	pw.println("<body>");
	pw.println("<h2>hello servlet!</h2>");
	pw.println("</body>");
	pw.println("</html>");
}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// post방식 요청 처리 내용 작성
}
*/