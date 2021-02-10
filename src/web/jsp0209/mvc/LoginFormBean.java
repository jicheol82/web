package web.jsp0209.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// bean 클래스 작성
// 컨트롤러에서 매개변수를 받는다
// 로직 처리하고 jsp 페이지 경로를 String으로 리턴해주는 메서드 작성
public class LoginFormBean implements SuperBean{
	// * 비지니스 로직처리 메서드
	// ctrler에서 받는 request, response 를 동일하게 전달받을 매개변수, throws도 동일
	// 요청 ->  ctrler -> bean의 actionBean()호출 -> 다시 ctrler -> view 응답
	public String actionBean(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		return "/jsp0210/loginForm.jsp";
	}
}
