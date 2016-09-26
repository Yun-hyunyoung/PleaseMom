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
@WebServlet("/BoardImageSearchServlet")
public class BoardImageSearchServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		String curPage=request.getParameter("curPage");
		System.out.println("curPage=="+curPage);
		HashMap<String, String> map=new HashMap<>();
		HashMap<String,String> writeMap=(HashMap<String, String>)request.getAttribute("writeMap");
		String scb_to = "";
		if (curPage == null) {
			curPage = "1";
			System.out.println("writeMap=="+writeMap);
			if (writeMap == null) {
				String scb_from1[] = request.getParameter("scb_from").split("/");// 출발지
				String scb_from = scb_from1[0];// 공항이름
				scb_to = request.getParameter("scb_to");// 도착지
				System.out.println("sct_to : " + scb_to);
				String min = request.getParameter("min");// 미니멈
				String max = request.getParameter("max");// 맥시멈 
				map.put("scb_from", scb_from);
				map.put("scb_to", scb_to);
				map.put("min", min);
				map.put("max", max);
				session.setAttribute("map", map);

			} else {

				String scb_from = writeMap.get("scb_from");
				scb_to = writeMap.get("scb_to");
				String min = writeMap.get("min");// 미니멈
				String max = writeMap.get("max");// 맥시멈
				
				map.put("scb_from", scb_from);
				map.put("scb_to", scb_to);
				map.put("min", min);
				map.put("max", max);
				session.setAttribute("map", map);
			}
		}
		
		session.setAttribute("curPage1",curPage);
		BoardService service = new BoardService();
		
		HashMap<String, Object> mapList
		= service.imgSearchPage(Integer.parseInt((String)session.getAttribute("curPage1")),scb_to);
		System.out.println(mapList);
		request.setAttribute("page", mapList.get("dto"));
		request.setAttribute("start", mapList.get("start"));
		request.setAttribute("arrival", mapList.get("arrival"));
		
		RequestDispatcher dis = 
				request.getRequestDispatcher("boardList.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

