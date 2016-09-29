package com.board;

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
import com.service.BoardService;
import com.service.MemberService;
import com.service.TravelHistoryService;

@WebServlet("/BoardMediateRetrieveServlet")
public class BoardMediateRetrieveServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("BoardMediateRetrieveServlet");
		HttpSession session=request.getSession();
		MemberDTO login=(MemberDTO)session.getAttribute("login");
		String scb_num=request.getParameter("scb_num");
		BoardService bService=new BoardService();
		MemberService mService=new MemberService();
		TravelHistoryService thService=new TravelHistoryService();
		HashMap<String, Object> mediateRetrieve=new HashMap<>();
		MemberDTO mDto=new MemberDTO();
		mediateRetrieve=bService.retrieve(scb_num);//게시판내용,출발공항이름, 도착공항이름
		
		//가이더일경우 신청자 정보 추가 출력하기!
		
		
		try {
			mDto=mService.boardSearchMember(scb_num);//작성자 정보
			if(mDto.getMem_num()==login.getMem_num()){
				//작성자==로그인자 같음 ==> 로그인자==가이더가 됨 
				int requestNum=thService.selectRequestNum(Integer.parseInt(scb_num));//요청자 멤버번호
				MemberDTO requestDto=mService.selectMember(requestNum);//요청자 정보얻기
				session.setAttribute("mediateRetrieveRequestMember", requestDto);
			}
			session.setAttribute("mediateRetrieve", mediateRetrieve);
			session.setAttribute("mediateRetrieveDto", mDto);
		} catch (CommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher dis =
				request.getRequestDispatcher("mediateRetrieve.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}





