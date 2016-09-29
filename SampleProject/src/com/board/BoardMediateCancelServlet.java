package com.board;

import java.io.IOException;
import java.util.ArrayList;
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
import com.service.MemberService;
import com.service.TravelHistoryService;

@WebServlet("/BoardMediateCancelServlet")
public class BoardMediateCancelServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("BoardMediateCancelServlet");
		HttpSession session=request.getSession();
		MemberDTO login=(MemberDTO)session.getAttribute("login");
		HashMap<String, Object> mediateRetrieve=(HashMap<String, Object>)session.getAttribute("mediateRetrieve");//게시글 정보
		MemberDTO boardMemberDTO=(MemberDTO)session.getAttribute("mediateRetrieveDto");
		MemberService mService=new MemberService();
		TravelHistoryService thService=new TravelHistoryService();
		BoardService bService=new BoardService();
		System.out.println("medaiteRetrieve-----캔슬부분"+mediateRetrieve);
		BoardDTO bDto=(BoardDTO)mediateRetrieve.get("bDto");
		int scb_num=bDto.getScb_num();//게시판번호
		HashMap<String, Integer> caseMap=new HashMap<>();
		int checkNum=0;
		String caseBoard;
		MemberDTO mediateMemberDTO=new MemberDTO();
		try {
			mService.updateCancelCase(login.getMem_num());
			if (login.getMem_num() == boardMemberDTO.getMem_num()) {
				// 로그인한사람 -> 가이더
				int requestNum = thService.selectRequestNum(scb_num);
				mediateMemberDTO = mService.selectMember(requestNum);// 요청자 정보얻기
				System.out.println("케이스 확인------"+login.getMem_case().equals("CANCEL")+mediateMemberDTO.getMem_case().equals("CANCEL"));
				if(login.getMem_case().equals("CANCEL") && mediateMemberDTO.getMem_case().equals("CANCEL")){
					caseMap.put("requestNum", mediateMemberDTO.getMem_num());
					caseMap.put("guiderNum", login.getMem_num());
					checkNum=thService.delete(caseMap);
				}
			} else {
				// 로그인한사람 -> 요청자
				int guiderNum=thService.selectGuiderNum(scb_num);
				mediateMemberDTO=mService.selectMember(guiderNum);
//				caseMap.put("guiderCase", guiderDto.getMem_case());
//				caseMap.put("requestCase", login.getMem_case());
				if(login.getMem_case().equals("CANCEL") && mediateMemberDTO.getMem_case().equals("CANCEL")){
					caseMap.put("requestNum", login.getMem_num());
					caseMap.put("guiderNum", mediateMemberDTO.getMem_num());
					checkNum=thService.delete(caseMap);
				}
			}
			
			if(checkNum>0){
				caseBoard="WAIT";
				bService.updateCase(scb_num,caseBoard);
				mService.updateDuringCase(login.getMem_num());
				mService.updateDuringCase(mediateMemberDTO.getMem_num());
				System.out.println("게시판 WAIT로 변경 성공");
			}
		} catch (CommonException e) {
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





