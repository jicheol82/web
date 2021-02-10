package web.jsp0209.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginProBean implements SuperBean{
	// * 비지니스 로직처리 메서드
	// ctrler에서 받는 request, response 를 동일하게 전달받을 매개변수, throws도 동일
	// 요청 ->  ctrler -> bean의 actionBean()호출 -> 다시 ctrler -> view 응답
	public String actionBean(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// 비즈니스 로직 처리
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		boolean check = TestDAO.getInstance().idPwCheck(id, pw);
		System.out.println(check);
		request.setAttribute("check", check);
		HttpSession session = request.getSession();
		if(check) {
			// 세션 만들어주기 (로그인 처리)
			session.setAttribute("memId", id);
		}else {
			session.removeAttribute("memId");
		}
		// 뷰 페이지 리턴
		return "/jsp0210/loginPro.jsp";
	}
}
