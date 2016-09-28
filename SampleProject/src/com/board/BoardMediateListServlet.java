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

import com.dto.BoardDTO;
import com.dto.MemberDTO;
import com.dto.TravelHistoryDTO;
import com.exception.CommonException;
import com.service.BoardService;
import com.service.TravelHistoryService;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/BoardMediateListServlet")
public class BoardMediateListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("BoardMediateListServlet");
		HttpSession session=request.getSession();
		MemberDTO loginDto=(MemberDTO)session.getAttribute("login");//로그인 사용자
		TravelHistoryService thService=new TravelHistoryService();
		BoardService bService=new BoardService();
		
		TravelHistoryDTO thDto=new TravelHistoryDTO();
		
		
		List<Integer> th_req_numList=null;
		List<Integer> th_gui_numList=null;
		
		HashMap<String,Object> requestBoard=null;
		HashMap<String,Object> guiderBoard=null;
		HashMap<String, Object> mediateMap=new HashMap<>();
		
		
		try {
			th_req_numList=thService.mediateInfoRequestList(loginDto.getMem_num());
			th_gui_numList=thService.mediateInfoGuiderList(loginDto.getMem_num());
			
			requestBoard=bService.mediateBoardList(th_req_numList);//동행요청 게시글정보,출발 공항이름,도착공항이름
			guiderBoard=bService.mediateBoardList(th_gui_numList);//내가 작성한 게시글정보,출발 공항이름,도착공항이름
			
			
			System.out.println("requestBoard=="+requestBoard);
			System.out.println("guiderBoard=="+guiderBoard);
			
			
			mediateMap.put("requestBoard", requestBoard);
			mediateMap.put("guiderBoard", guiderBoard);
			System.out.println("mediateMap=="+mediateMap);
			request.setAttribute("mediateBoardListMap", mediateMap);
		} catch (CommonException e) {
			e.printStackTrace();
		}
			
		RequestDispatcher dis =
		request.getRequestDispatcher("mediate.jsp");
		dis.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}





