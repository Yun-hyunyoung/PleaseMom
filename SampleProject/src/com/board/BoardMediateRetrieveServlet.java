package com.board;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.MemberDTO;
import com.exception.CommonException;
import com.service.BoardService;
import com.service.MemberService;

@WebServlet("/BoardMediateRetrieveServlet")
public class BoardMediateRetrieveServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("BoardMediateRetrieveServlet");
		String scb_num=request.getParameter("scb_num");
		BoardService bService=new BoardService();
		MemberService mService=new MemberService();
		HashMap<String, Object> mediateRetrieve=new HashMap<>();
		MemberDTO mDto=new MemberDTO();
		mediateRetrieve=bService.retrieve(scb_num);
		try {
			mDto=mService.boardSearchMember(scb_num);
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





