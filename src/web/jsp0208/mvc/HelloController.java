package web.jsp0208.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class HelloController extends HttpServlet {
	// init()은 한번만 실행된다
	@Override
	// 이 클래스는 override하기 때문에 parameter로 HttpSession session 추가가 안된다.
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 바로 실행 안됨. 요청시 주소와 맞물려 서블릿으로 넘어오게 주소만들어 줘야 함
		// ->web.xml에 작업ㅂ
		System.out.println("hello");
		
		// request 속성 이용하여 데이터 저장해서 포워드하기
		// session과 같지 않게 유효기간이 있음
		request.setAttribute("num", 111);
		request.setAttribute("name", "git");
		
		// session으로 속성 저장하기
		// 해당 클래스에는 session이 없으니 request에서 session을 꺼내서 변수에 담아주자
		HttpSession session = request.getSession();
		session.setAttribute("memId", "admin");

		// 컨트롤러에서->이동해야되는 view페이지 작성해서 포워딩 해주기
		RequestDispatcher rd = request.getRequestDispatcher("/jsp0208/hello.jsp");
		rd.forward(request, response); 
	
		
	}
}
