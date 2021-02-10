package web.jsp0208.mvc;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class TestController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request 속성 추가
		request.setAttribute("num", 99);
		request.setAttribute("id", "한글");
		// request로 null값 보내서 확인
		request.setAttribute("data", null);
		// 문자형 숫자 보내서 숫자 연산 확인
		request.setAttribute("age", "12");
		// session으로 값 보내기
	 	HttpSession session = request.getSession();
	 	session.setAttribute("num", 999);
	 	session.setAttribute("memId", "jsp");
	 	// 배열보내기
	 	int[] arr = {10,20,30,40};
	 	request.setAttribute("arr", arr);
	 	// arrayList 보내기
	 	ArrayList list = new ArrayList();
	 	list.add("java");
	 	list.add("jsp");
	 	list.add("spring");
	 	request.setAttribute("list", list);
	 	// DTO객체 만들고, 객체 값 넣어 보내기
	 	TestDTO dto = new TestDTO();
	 	dto.setId("testdto");
	 	dto.setAge(100);
	 	dto.setName("asdf");
	 	request.setAttribute("dto", dto);
	 	
	 	request.setAttribute("day", new java.util.Date());
	 	
	 	// view로 이동
		request.getRequestDispatcher("/jsp0209/jstl02.jsp").forward(request, response);
	}
}
