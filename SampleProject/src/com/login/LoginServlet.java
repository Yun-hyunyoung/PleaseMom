package com.login;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.exception.CommonException;
import com.service.MemberService;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = (String)request.getParameter("userid");
		String passwd = (String)request.getParameter("passwd");
		
		HashMap<String,String> map = new HashMap<>();
		map.put("mem_id", userid);
		map.put("mem_passwd", passwd);
		
		MemberService service = new MemberService();
		MemberDTO dto = null;
		String target = null;
		String title = null;
		
		try {
			dto = service.login(map);
			if (dto == null) {
				title="아이디 또는 비밀번호가 일치하지 않습니다.";
				String link = "LoginFormServlet";
				request.setAttribute("title", title);
				request.setAttribute("link", link);
				target="error.jsp";
			}else{
				HttpSession session = request.getSession();
				session.setAttribute("login", dto);
				request.setAttribute("msgLogin", "로그인 되었습니다");
				target = "home.jsp";
			}
		} catch (CommonException e) {
			target = "error.jsp";
			title = e.getMessage();
			String link = "LoginFormServlet";
			request.setAttribute("title", title);
			request.setAttribute("link", link);
		}
		RequestDispatcher dis = request.getRequestDispatcher(target);
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
