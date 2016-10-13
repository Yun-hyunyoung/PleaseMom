package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.ReviewDAO;
import com.dto.MemberDTO;
import com.dto.ReviewDTO;
import com.exception.CommonException;

@Controller
public class ReviewController {
	
	@Autowired
	ReviewDAO rDao;
	
	@ExceptionHandler(Exception.class)
	public String error(){
		return "error";
	}
	
	@RequestMapping("/BoardReviewListServlet")
	public String reviewList(HttpSession session, HttpServletRequest request) throws CommonException {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		int mem_num = dto.getMem_num();

		List<ReviewDTO> list = rDao.rievewList(mem_num);
		List<Integer> fromList = new ArrayList<Integer>();
		List<Integer> toList = new ArrayList<Integer>();
		for (ReviewDTO rdto : list) {
			fromList.add(rdto.getBoardDto().getScb_from());
			toList.add(rdto.getBoardDto().getScb_to());
		}
		List<String> airportFrom = rDao.airportList(fromList);
		List<String> airportTo = rDao.airportList(toList);

		request.setAttribute("reviewList", list);
		request.setAttribute("airportFrom", airportFrom);
		request.setAttribute("airportTo", airportTo);
		
		return "review";
	}
}
