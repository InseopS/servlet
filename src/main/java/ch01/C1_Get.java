package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ch01/get/add")
// Get 읽기, Post 쓰기
public class C1_Get extends HttpServlet {
	@Override
	// doGet은 servlet이 받은 request 타입이 Get이면 작동한다.
	public void doGet(HttpServletRequest req, HttpServletResponse res) 
		throws ServletException, IOException {
			int num1 = 1;
			int num2 = 2;
			// response header에 html, utf-8로 작성된 것이라는 정보를 담는다.
			res.setContentType("text/html; charset=utf-8");
			PrintWriter out = res.getWriter();
			out.println("<h2>GET</h2>");
			out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	}	
}