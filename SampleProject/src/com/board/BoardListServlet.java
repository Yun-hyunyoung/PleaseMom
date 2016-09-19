package com.board;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.service.BoardService;
import com.dto.BoardDTO;
import com.dto.PageDTO;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/BoardListServlet")
public class BoardListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String curPage = request.getParameter("curPage");
		HashMap<String, String> map=new HashMap<>();
		HttpSession session=request.getSession();
		if(curPage == null){
			curPage = "1";
			String scb_from1[]=request.getParameter("scb_from").split("/");//출발지
			String scb_from=scb_from1[0];//공항이름
			String scb_to=request.getParameter("scb_to");//도착지
			String min=request.getParameter("min");//미니멈
			String max=request.getParameter("max");//맥시멈
			session.setAttribute("map", map);
			map.put("scb_from", scb_from);
			map.put("scb_to", scb_to);
			map.put("min", min);
			map.put("max", max);
			System.out.println(scb_from+scb_to+min+max);
		}
		BoardService service = new BoardService();
		
		PageDTO dto = service.page(Integer.parseInt(curPage),(HashMap<String, String>)session.getAttribute("map"));
		
		request.setAttribute("page", dto);
		
		RequestDispatcher dis = 
				request.getRequestDispatcher("boardList.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

