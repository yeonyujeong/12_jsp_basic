package _09_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Join")		// url 접근 경로 , 프로젝트 이름 / url이름으로 웹시스템 접근한다.
public class Join extends HttpServlet {
	
	private static final long serialVersionUID = 1L;	// Servlet생성시 기본값으로 생성 , 크게 의미x
	
	
	// get 형식으로 요청이 들어왔을때 아래의 메서드가 동작
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	// post 형식으로 요청이 들어왔을때 아래의 메서드가 동작
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//페이지 이동 방식
		RequestDispatcher dis = request.getRequestDispatcher("chapter09_servlet/01_join.jsp");	// 포워딩 경로 : 패키지명/jsp파일명
		dis.forward(request, response);
		
	}
	
	

}
