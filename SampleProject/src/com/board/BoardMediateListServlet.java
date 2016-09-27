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
		HashMap<String, String> mediateMemberCaseMap=(HashMap<String, String>)session.getAttribute("mediateMemberCaseMap");//case 4가지 정보
		//HashMap<String, Object> retrieveMap=(HashMap<String, Object>)session.getAttribute("retrieveMap");//게시판정보
		MemberDTO loginDto=(MemberDTO)session.getAttribute("login");//로그인 사용자
		TravelHistoryService thService=new TravelHistoryService();
		BoardService bService=new BoardService();
		List<Integer> th_req_numList=null;
		List<Integer> th_gui_numList=null;
		List<BoardDTO> requestBoardList=null;
		List<BoardDTO> guiderBoardList=null;
		try {
			th_req_numList=thService.mediateInfoRequestList(loginDto.getMem_num());
			th_gui_numList=thService.mediateInfoGuiderList(loginDto.getMem_num());
			
			requestBoardList=bService.mediateBoardList(th_req_numList);
			guiderBoardList=bService.mediateBoardList(th_gui_numList);
			System.out.println("th_req_numList=="+th_req_numList);
			System.out.println("th_gui_numList=="+th_gui_numList);
		
		} catch (CommonException e) {
			e.printStackTrace();
		}
		
//		String scb_num = request.getParameter("scb_num");
//		MemberService mService=new MemberService();
//		BoardService bService = new BoardService();
//		HttpSession session=request.getSession();
//		try {
//			MemberDTO mDto =mService.boardSearchMember(scb_num);
//			HashMap<String, Object> map = bService.retrieve(scb_num);
//			session.setAttribute("retrieveMap", map);
//			request.setAttribute("mDto", mDto);
//		} catch (CommonException e) {
//			e.printStackTrace();
//		}
//		
		RequestDispatcher dis =
		request.getRequestDispatcher("mediate.jsp");
		dis.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}





