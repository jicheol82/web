package web.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MiddlePro {
	private static MiddlePro singleton = new MiddlePro();
	private MiddlePro() {}
	public static MiddlePro getInstance() {return singleton;}
	
	public void testMethod(HttpServletRequest request, HttpServletResponse response) {
		
	}
}
